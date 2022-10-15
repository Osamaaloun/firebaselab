import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:labfirestore/companant/getuserinfo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  final user = FirebaseAuth.instance.currentUser!;
  List<String> docIDs = [];
  Future getIDs() async {
    await FirebaseFirestore.instance
        .collection('Users')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              print(element.reference);
              docIDs.add(element.reference.id);
            }));
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text("Signed in as : ${user.email}")),actions: [IconButton(onPressed: () {FirebaseAuth.instance.signOut();
        
      }, icon: Icon(Icons.logout))], ),
      body: Column(
        children: [
          
          // MaterialButton(
          //   onPressed: () {
          //     FirebaseAuth.instance.signOut();
          //   },
          //   color: Colors.red,
          //   child: Text("signOut"),
          // ),
          Expanded(
            child:FutureBuilder(future: getIDs(),builder: ((context, snapshot) {
              return  ListView.builder(
              itemCount: docIDs.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(tileColor: Colors.deepOrange,
                    title: GetUsersInfo(dec: docIDs[index],),
                  ),
                );
              },
            );
            }),)
          )
        ],
      ),
    );
  }
}
