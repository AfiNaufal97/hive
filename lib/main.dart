import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_lat/second_page.dart';
import 'model/person.dart';



Box? box;
void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(PersonAdapter());
  box = await Hive.openBox("box");
  box?.put("saya", Person(name: 'aaa', age: 10));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive'),
      ),
      body: Column(
      children: [

      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));
        }, child: Icon(Icons.next_plan),
      ),
    );
  }
}
