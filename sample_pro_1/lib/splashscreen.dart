// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:sample_pro_1/linkedinloginpage.dart';
import 'package:sample_pro_1/profilemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   var val;
  @override
  void initState(){
     super.initState();
     retrievingData();
     
    print("Init state called");
  }

 void moveToNext() async{
    await Future.delayed(Duration(seconds: 3));
    if(val=="1")
    {
   Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
 
    }
    else{
   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
       
            children: [
              Image.asset(
                "asset/linkedin logo.jpg",
                width: 150,
                height: 70,
              ),
            ],
          ),
          
        ]
     ),
     
    );
  }

  
void retrievingData() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  val = prefs.getString("Go");
  // print(name);
moveToNext();

}
}