import 'package:firebase_fundamentals/Functions/authfunction.dart';
import 'package:firebase_fundamentals/Functions/crud_functions.dart';
import 'package:firebase_fundamentals/Pages/CRUD%20Page/ReadPage.dart';
import 'package:flutter/material.dart';

class CrudApp extends StatefulWidget {
  const CrudApp({super.key});

  @override
  State<CrudApp> createState() => _CrudAppState();
}

class _CrudAppState extends State<CrudApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          IconButton(onPressed: logout, icon: Icon(Icons.logout))
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            elevatedbuttonWid("CREATE", create),
            elevatedbuttonWid("READ", () => Navigator.push(context, MaterialPageRoute(builder: (context) => Read_Data() ))),
            elevatedbuttonWid("UPDATE", update),
            elevatedbuttonWid("DELETE", delete),
          ],
        ),
      ),
    );
  }

  Widget elevatedbuttonWid(String text, VoidCallback? function) {
    return ElevatedButton(onPressed: function, child: Text(text));
  }
}
