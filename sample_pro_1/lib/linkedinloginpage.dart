import 'package:flutter/material.dart';
import 'package:sample_pro_1/profilemenu.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
}
