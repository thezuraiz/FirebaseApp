import 'package:cloud_firestore/cloud_firestore.dart';

create() async {
  try {
    await FirebaseFirestore.instance
        .collection("TODO")
        .doc("Create")
        .set({"name": "Name", "animal": "Animal", 'age': 'Age'})
        .then((value) => print("Data Created"));
  } catch (e) {
    print(e);
  }
}

update() {}

delete() {}

read() {}
