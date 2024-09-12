import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Home page"),
            centerTitle: true,
            backgroundColor: Colors.indigo[600]
        ),
        drawer: Drawer(
          child: Text("test"),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Text("btm"),

        ),
        body: Center(
          child: Text(
            "Testing",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                color: Colors.black87,
                fontFamily: 'FascinateInline'
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
        },
          child: Text("Clicked"),
          backgroundColor: Colors.indigo[400],
        )

    );

  }

}



