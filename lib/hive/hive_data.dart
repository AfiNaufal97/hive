import 'package:hive/hive.dart';

var hive;

void setHive(){
  hive = Hive.box('name');
}

void addData(String name, String index){
  hive.put(index, name);
}

