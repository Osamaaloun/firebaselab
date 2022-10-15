import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetUsersInfo extends StatelessWidget {
  final String dec;
  
  GetUsersInfo({required this.dec,});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');
    return FutureBuilder(
        future: users.doc(dec).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Text('my name is ${data['first name']} ,and my age is:${data['age']}');
          } 
            return Text("Loading...");
        }));
  }
}
