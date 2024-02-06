
import 'package:firebase_auth/firebase_auth.dart';

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

login(String email,String pass)async{
  try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass).then((value) => print("${email} Logined"));
  }on FirebaseAuthException catch(e){
    print(e.code.toString());
  }catch(e){
    print(e);
  }
}