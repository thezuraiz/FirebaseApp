import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_fundamentals/Pages/CRUD%20Page/crud_main_page.dart';
import 'package:firebase_fundamentals/firebase_options.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            color: Colors.blue,
            foregroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.white),
        ),
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            shape: MaterialStateProperty.all(const StadiumBorder()),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black),
          ),
        ),
      ),
      home: Crud_page()
    );
  }
}
