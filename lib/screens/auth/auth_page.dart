import 'package:flutter/material.dart';
import '../LogInPage.dart';
import '../register.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool ShowLoginPage=true;
  void switchScreens(){
    setState(() {
      ShowLoginPage=!ShowLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (ShowLoginPage==true) {
    return loginPage(showRegsterPage:switchScreens );
     
   }else {return SignUp(ShowLoginPage:switchScreens );}
  }
}