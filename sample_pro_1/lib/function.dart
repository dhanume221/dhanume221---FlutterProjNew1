import 'dart:convert';

import 'package:sample_pro_1/student_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> storingDatatoPreff(bool isuserloggedin) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("isloggedin", isuserloggedin);
}

Future<bool> gettingBoolData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? data = prefs.getBool("isloggedin");
  if(data == null){
    data = false;
  }

  return data;
}

void deletingString() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove("isloggedin");
}

Future <void> addStudent(StudentModel studentModel) async {
  final  prefs = await SharedPreferences.getInstance();
  String jsonString =  jsonEncode(studentModel.toJson());
  print(jsonString);
  await prefs.setString("StudentData", jsonString);

}


Future<StudentModel?> getStudent() async{
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString("StudentData");
    if (jsonString != null) {
      Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      return StudentModel.fromJson(jsonMap);
    }
     return null;
}

