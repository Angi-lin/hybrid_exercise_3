import 'package:hybrid_exercise_3/hybrid_exercise_3.dart';
import 'dart:convert';

void main() {
  String data = '''
[
  {
    "name": "Jay-Z",
    "age": "51",
    "email": "jayz@example.com"
  },
  {
    "name": "Eminem",
    "age": "48",
    "email": "eminem@example.com"
  },
  {
    "name": "Kendrick Lamar",
    "age": "34",
    "email": "kendrick@example.com"
  },
  {
    "name": "Drake",
    "age": "34",
    "email": "drake@example.com"
  }

]

  ''';

  dynamic jsonList = json.decode(data);

  List<Map<String, String>> listOfMaps = List<Map<String, String>>.from(
  jsonList.map((item) {
    return Map<String, String>.from(item);
  })
);

  var students = Students(listOfMaps);

  students.sort('name');
  print('Sort by name:');
  students.output();

  students.plus({ 'name': 'Nas', 'age': '48', 'email': 'nas@example.com'});
  print('Add Nas:');
  students.output();

  students.remove('name', 'Jay-Z');
  print('Remove Jay-Z:');
  students.output();
  
}

