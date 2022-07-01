
import 'package:contact_app/screens/front.dart';
import 'package:contact_app/screens/side.dart';
import 'package:contact_app/screens/tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SideNav());
}
class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text("CONTACTS",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 40
          ),
          ),
        ),
        body:Front(),
      ),
    );
  }
}
