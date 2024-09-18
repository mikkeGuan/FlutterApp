import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {

  String taskName;
  bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(onPressed: deleteFunction,
              icon: Icons.delete_forever,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(20),
            )
          ],

        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
          children: [
            Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
            activeColor: Colors.black,),
            Text(taskName,
              style: TextStyle(
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
              color: taskCompleted? Colors.blueGrey : Colors.black),

            )
          ],
        ),
          decoration: BoxDecoration(color: Colors.greenAccent[400],

          borderRadius: BorderRadius.circular(20),
          ),

        ),
      ),
    );
  }
}
