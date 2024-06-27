import 'package:flutter/material.dart';
import 'package:sample_pro_1/profilemenu.dart';
import 'package:sample_pro_1/function.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  
  @override
  Widget build(BuildContext context) {
    String hardcodedUsername = "user";
    String hardcodedPassword = "Password";

    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Image.asset(
            "asset/linkedin logo.jpg",
            width: 150,
            height: 70,
          ),
          // SizedBox(height: 50,),
           Padding(
            padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 30),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                label: Text("Username")
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
               label: Text("Password")
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                  
               
               if(hardcodedUsername == usernameController.text && hardcodedPassword == passwordController.text)
                  {
                    
                //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 3),
                // content: Row(
                //   children: const [
                //     Icon(Icons.check),
                //     Text("Logged In Successfully"),
                //   ],
                // ),
                // ));
                storingDatatoPreff(usernameController.text,passwordController.text);
                retrievingData();
                 Navigator.push(
                          context, 
                          MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                          ),
                        );
                 
                  }
              else{

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 3),
                content: Row(
                  children: const [
                    Icon(Icons.warning),
                    Text("Invalid Credentials !"),
                  ],
                ),
                ));
              }
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              height: 50,
              minWidth: 200,
            ),
          ),
        ],
      ),
    );
  }

  Future <void> storingDatatoPreff(String a,String b) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("User", a.toString());
  prefs.setString("Pass", b.toString());
  prefs.setString("Go", "1");
}
}
