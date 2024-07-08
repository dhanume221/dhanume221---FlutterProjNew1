import 'package:flutter/material.dart';
import 'package:sample_pro_1/Student_reg.dart';
//import 'package:sample_pro_1/home.dart';
//import 'package:sample_pro_1/profilemenu.dart';
// import 'package:sample_pro_1/linkedinloginpage.dart';
import 'package:sample_pro_1/splashscreen.dart';
//import 'package:sample_pro_1/telegram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const HomeScreen()
      //home : LoginPage(),
      home : StudentReg(),
      //home : SplashScreen()
    );
  }
}



