import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'model/person.dart';

class SecondPage extends StatefulWidget{
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late Box box;
  late Person person;
  @override
  void initState() {
    box = Hive.box('box');
    person = box.get('saya');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(person.age.toString()),
      ),
    );
  }
}