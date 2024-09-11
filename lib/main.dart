import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
        title: Text("Home page"),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
    ),
    drawer: Drawer(
      child: Text("test"),
    ),
    bottomNavigationBar: BottomAppBar(
      child: Text("btm"),
    ),
    body: Center(
      child: Text("Hellou"),
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {
      },
        child: Text("Click me")
    )

    ),
  )
);

