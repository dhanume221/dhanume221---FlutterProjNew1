import 'package:shared_preferences/shared_preferences.dart';

Future <void> storingDatatoPreff(bool isuserloggedin) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("isloggedin", isuserloggedin);

}

void retrievingData() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? name = prefs.getString("isloggedin");
  print(name);
}

void deletingString()async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove("isloggedin");
}

