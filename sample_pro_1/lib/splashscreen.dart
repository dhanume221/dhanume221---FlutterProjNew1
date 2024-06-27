import 'package:flutter/material.dart';
import 'package:sample_pro_1/linkedinloginpage.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
     super.initState();
     moveToNext();
    print("Init state called");
  }

 void moveToNext() async{
    await Future.delayed(Duration(seconds: 3));
     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Image.asset(
            "asset/linkedin logo.jpg",
            width: 150,
            height: 70,
          ),
          
        ]
     ),
     
    );
  }
}