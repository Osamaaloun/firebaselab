import 'package:flutter/material.dart';
import 'package:labfirestore/firebase_options.dart';
import 'package:labfirestore/screens/auth/HomePage.dart';
import 'package:labfirestore/screens/LogInPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:labfirestore/screens/screenpage1.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
 runApp(MyApp());
// Ideal time to initialize

//...

 
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,home: Home(),);
  }
}