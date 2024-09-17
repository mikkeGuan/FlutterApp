import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, " + userName;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Your name",

              ),
            ),

            ElevatedButton(onPressed: greetUser, child: Text("Tap in!")
            ),
          ],
        ),
      ),

      )
    );
  }
}
