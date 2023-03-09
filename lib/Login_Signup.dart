import 'package:flutter/material.dart';
import 'package:sqflite_loginandereg/Signup.dart';

import 'Login.dart';

class Login_Signup extends StatefulWidget {
  const Login_Signup({super.key});

  @override
  State<Login_Signup> createState() => _Login_SignupState();
}

class _Login_SignupState extends State<Login_Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Text(
                "Hello There!",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "Automatic identity verification which enable you to verify your identity",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSw7vWDeyaMyJZox4zRkQpIKJpn5wa0TgrNasXUD8Ace5GEJy5NlY47AMRzgSCg8HneXw&usqp=CAU"),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blueAccent.shade700),
                  minimumSize: MaterialStateProperty.all(Size(330, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_Form()));
                },child: Text("Login",style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                  minimumSize: MaterialStateProperty.all(Size(330, 50)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ))
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup_Form(),));
                }, child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}


