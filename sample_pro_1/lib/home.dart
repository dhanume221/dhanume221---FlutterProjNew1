import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

           appBar: AppBar(

                backgroundColor: Colors.green,
                title:const Text("WhatsApp",
                style: TextStyle(color: Colors.white),
                ),

                
                actions: const[
                  Icon(
                    Icons.search,
                    color: Colors.white
                  ),
                  Icon(
                    Icons.more_vert,color: Colors.white,
                  )
                ],
                
            ),
            body: const Column(
              children: [
                  
               
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                ),
                title: Text(
                  "Kevin",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),
                ),
                subtitle: Text(
                  "Hey man lets catchUp !!",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Text(
                  "10.00",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                ),
                title: Text(
                  "John",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),
                ),
                subtitle: Text(
                  "Good Morning !!",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Text(
                  "11.00",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              
               
              
              
  
              
              
              
              ],
            ),
           
    );
  }
  



}