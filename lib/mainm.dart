import 'package:flutter/material.dart';
void main()=> runApp(MaterialApp(
  home: Bunny(),
  debugShowCheckedModeBanner: false,
));
class Bunny extends StatefulWidget {
  const Bunny({super.key});

  @override
  State<Bunny> createState() => _BunnyState();
}

class _BunnyState extends State<Bunny> {
  int Bunnylevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('MY INFOO'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0.0,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            Bunnylevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey,
            ),
            Text('NAME',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
              ),


            ),
            SizedBox(height: 10.0,),
            Text(
              'SRUJAN',
              style: TextStyle(
                  color:Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),


            ),
            SizedBox(height: 30.0,),
            Text(
              'LEVEL',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
              ),


            ),
            SizedBox(height: 10.0,),
            Text(
              '$Bunnylevel',
              style: TextStyle(
                  color:Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),


            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,


                ),
                SizedBox(width: 10.0),
                Text(
                  'srujankm12@gmail.com',
                  style: TextStyle(
                      color:Colors.yellow,
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),


                ),
              ],
            ),
            SizedBox(width: 30.0),
            Icon(
              Icons.phone,
              color: Colors.grey,
            ),
            Text(
              '8147456955',
              style: TextStyle(
                  color:Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );

  }
}

