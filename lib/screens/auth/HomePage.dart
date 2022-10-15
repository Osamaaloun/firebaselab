import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:labfirestore/screens/auth/auth_page.dart';
import 'package:labfirestore/screens/screenpage1.dart';

import '../LogInPage.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return screen1();
        } else
          return AuthPage();
      },
    ));
  }
}