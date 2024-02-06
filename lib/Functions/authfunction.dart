import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_fundamentals/Pages/CRUD%20Page/crud_main_page.dart';
import 'package:flutter/material.dart';

signup(String email, String pass)async{
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, password: pass).then((value) => print("Account Created"));
  }on FirebaseAuthException catch(e){
    print(e.code);
  }catch(e){
    print(e);
  }
}

login(BuildContext context,String email,String pass)async{
  try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context) => Crud_page())));
  }on FirebaseAuthException catch(e){
    print(e.code.toString());
  }catch(e){
    print(e);
  }
}

logout()async{
  await FirebaseAuth.instance.signOut();
}