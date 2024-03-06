import 'package:flutter/material.dart';
import 'package:hello/mybutton.dart';
class DialogBoxx extends StatelessWidget {
  final controller;
  VoidCallback onsave;
  VoidCallback oncancel;
   DialogBoxx({super.key,
  required this.controller,
  required this.onsave,
  required this.oncancel,
   });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,

      content: Container(

        height: 120,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
            controller:controller ,
            decoration:InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add a new task',
            ) ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              mybutton(text: "save", onPressed:onsave ),
              const SizedBox(width: 8),
              mybutton(text: "cancel", onPressed:oncancel),
            ],
          )
        ],),
      ),
    );
  }
}
