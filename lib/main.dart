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
          child: Column(
            children: [
            Image.asset("assets/android-img.jpg"),
            Image.asset("assets/Flutter-feature.png"),
          ],
          ),
        ),


        floatingActionButton: FloatingActionButton(onPressed: () {
        },
          child: Text("Click"),
          backgroundColor: Colors.indigo[400],
        )

    );

  }

}



