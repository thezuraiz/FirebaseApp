import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_fundamentals/Pages/Authentication%20Page/authPage.dart';
import 'package:firebase_fundamentals/Pages/CRUD%20Page/crud_app.dart';
import 'package:flutter/material.dart';

class Crud_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          return CrudApp();
        }
        else{
          return LoginSignUpPage();
        }
      },
    );
  }
}
