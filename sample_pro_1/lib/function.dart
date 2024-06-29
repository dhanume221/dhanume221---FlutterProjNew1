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
