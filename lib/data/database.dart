import 'package:hive_flutter/hive_flutter.dart';

class ToDoDb {
  List toDoList = [];

  final _myBox = Hive.box("mybox");

  void createInitialData () {
     toDoList =[
      ["Vacuum floor", false],
      ["Play basketball", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDb() {
    _myBox.put("TODOLIST", toDoList);
  }
}