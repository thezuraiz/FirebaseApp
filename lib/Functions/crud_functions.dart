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

update()async{
  try{
    await FirebaseFirestore.instance.collection("TODO").doc("Create").update(
        {"age": 7}).then((value) => print('Data Updated'));
  }catch(e){
    print(e);
  }
}

delete()async {
  try {
    await FirebaseFirestore.instance.collection("TODO").doc("Create")
        .delete()
        .then((value) => print("Data Deleted"));
  }catch(e){
    print(e);
  }
}

read() {}
