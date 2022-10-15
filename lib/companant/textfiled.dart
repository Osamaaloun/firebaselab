import 'package:flutter/material.dart';

class textField0 extends StatelessWidget {
   textField0({required this.hinttext, required this.isItPass});
String ? hinttext;
bool ? isItPass=false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(obscureText: isItPass!,
                      decoration: InputDecoration(
                          hintText: hinttext, border: InputBorder.none),
                    ),
                  ),
                ),
              );
  }
}