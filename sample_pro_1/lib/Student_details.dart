import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample_pro_1/function.dart';
import 'package:sample_pro_1/student_model.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  StudentModel? student;
  //  List <String> student;

  @override
  void initState() {
    super.initState();
    _loadStudent();
  }

  Future<void> _loadStudent() async {
    StudentModel? getStudents = await getStudent();
    setState(() {
      student = getStudents;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Student Details",
          style: TextStyle(color: Colors.blue),),
        ),
        body: student == null
            ? Center(
                child: Text("No Student Data"),
              )
            : Padding(
                padding: EdgeInsets.only(left: 60,right: 130),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First Name : ${student!.firstName}',
                    style: TextStyle(color: Color.fromARGB(255, 246, 27, 16),fontSize: 14),
                    ),
                    Text('Last Name : ${student!.secondName},',
                    style: TextStyle(color: Color.fromARGB(255, 246, 27, 16),fontSize: 14),),
                    Text('Address : ${student!.address}',
                    style: TextStyle(color: Color.fromARGB(255, 246, 27, 16),fontSize: 14),),
                    Text('Mobile Number : ${student!.mobile}',
                    style: TextStyle(color: Color.fromARGB(255, 246, 27, 16),fontSize: 14),),
                  ],
                ),
              ));
  }
}
