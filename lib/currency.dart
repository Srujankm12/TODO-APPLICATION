import 'package:flutter/material.dart';
import 'package:hello/DialogBox.dart';
import 'package:hello/ToDoList.dart';
import 'package:hello/database.dart';
import 'package:hive/hive.dart';

class Current extends StatefulWidget {
  const Current({super.key});

  @override
  State<Current> createState() => _CurrentState();
}

class _CurrentState extends State<Current> {

  ToDodataBase db=ToDodataBase();

  @override
  void initState() {
    getData();

    // TODO: implement initState
    super.initState();
  }
  void getData() async {
    var box = await Hive.openBox("ToDobox");
    print(box.get('list'));
    if (await box.get("list") == null) {
      db.createInitialData();
    } else {
      db.getData();
     setState(() {

     });
    }
  }
  final _controller=TextEditingController();

  void checkedBoxChanged(bool? value,int index){
    setState(() {
     db.toDoList[index][1]=!db.toDoList[index][1];

    });
   // db.updateDataBase();
  }
  //save new task
  void saveNewTask()async {
    // await db.loadData();
    setState(()  {
      db.toDoList.add([_controller.text,false]);
      db.loadData(db.toDoList);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask(){
    showDialog(context: context,
        builder: (context){
      return DialogBoxx(
controller:_controller ,
        onsave: saveNewTask,
        oncancel: ()=> Navigator.of(context).pop(),
      );
    },
    );
  }

  void deleteTask(int index){
    setState(() {
      db.toDoList.removeAt(index);
    });
   //db.updateDataBase();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        centerTitle: true,
        title:  const Text(' N  O  T  E '),
        backgroundColor: Colors.yellow,
        elevation: 0,

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount:db.toDoList.length,
        itemBuilder: (context,index){
            return ToDoList(
                taskName: db.toDoList[index][0],
                taskCompleted: db.toDoList[index][1],
                onChanged: (value)=>checkedBoxChanged(value,index),
              deleteFunction:(context) => deleteTask(index),
            );
            },
      )

    );
  }
}
