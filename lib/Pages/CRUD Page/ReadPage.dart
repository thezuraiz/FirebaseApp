import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Read_Data extends StatelessWidget {
  const Read_Data({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fetch Data"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("TODO").snapshots(),
          builder: (context, petSnapshot){
            if (petSnapshot.hasData) {
              final petDocs = petSnapshot.data!.docs;
              return ListView.builder(
                itemCount: petDocs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(maxRadius: 15,child: Text("${index+1}"),),
                    title: Text('${petDocs[index]['name']}'),
                    trailing: Text("${petDocs[index]['animal']}"),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
