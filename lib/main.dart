import 'package:flutter/material.dart';
import 'package:my_app/pages/todo_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: TodoPage(),
    );
  }
}


