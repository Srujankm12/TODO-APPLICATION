import 'package:hive_flutter/hive_flutter.dart';

class ToDodataBase {
  List toDoList = [];
  Future<Box<dynamic>> get getBox async{ var box = await Hive.openBox("ToDobox"); return box;}

  void createInitialData(){
    toDoList=[
      ['make',false],
      ['make work',false],
    ];
  }

Future<void> loadData(List data)async{
  var box = await getBox;
  await box.put("list",toDoList);
print(box.get('list'));
}
Future<void> getData()async{
    var box = await getBox;
    toDoList = await box.get('list');
}
}