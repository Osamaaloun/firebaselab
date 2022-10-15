import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:labfirestore/companant/textfiled.dart';
import 'package:google_fonts/google_fonts.dart';


class loginPage extends StatefulWidget {
  final VoidCallback showRegsterPage;
  const loginPage({super.key, required this.showRegsterPage});

  @override
  State<loginPage> createState() => _loginPageState();
}

final email = TextEditingController();
final password = TextEditingController();

Future signIn() async{
  await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text.trim(), password: password.text.trim());
}

class _loginPageState extends State<loginPage> {
  @override
  // void dispose() {
  //   // TODO: implement dispose
  //   email.dispose();
  //   password.dispose();
  //   super.dispose();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.android,size: 100,),SizedBox(height: 30),
              Text(
                "Hello Again",
                style: GoogleFonts.bebasNeue(fontSize: 52)
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome back,you been missed",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(controller: email,
                      decoration: InputDecoration(
                          hintText: "Email", border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
           Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(obscureText: true,
                    controller: password,
                      decoration: InputDecoration(
                          hintText: "Password", border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(onTap: signIn
                ,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),),
                  ),
                ),
              ),SizedBox(height: 10,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not A Member?"), GestureDetector(onTap: widget.showRegsterPage,child: Text("Registar Now",style: TextStyle(color: Colors.blue),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
