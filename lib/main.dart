// @dart=2.9
// import 'package:dominos_clone_app/signIn.dart';
import 'package:dominos_clone_app/welcome.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
