import 'package:flutter/material.dart';
import 'package:my_app/util/buttons.dart';

class DialogBox extends StatelessWidget {
 final controller;
 VoidCallback onSave;
 VoidCallback onCancel;
 DialogBox({super.key, required this.controller, required this.onCancel, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lime[300],
      content: SizedBox(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
              hintText: "Add a new task"),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Buttons(text: "Save", onPressed: onSave),
                Buttons(text: "Cancel", onPressed: onCancel),

              ],),
            )
          ],
        ),
      ),
    );
  }
}
