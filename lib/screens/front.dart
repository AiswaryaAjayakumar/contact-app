
import 'package:contact_app/screens/call.dart';
import 'package:contact_app/screens/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Front extends StatefulWidget {
  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  //const Front({Key? key}) : super(key: key);
int _mycurrentindex=0;

var pages=[Call(),Contact()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:pages[_mycurrentindex] ,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _mycurrentindex=index;
            });
          },
          currentIndex: _mycurrentindex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black54,
          iconSize: 40,
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.call,
            color: Colors.blueGrey,
            ),
            label: "Calls",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded,
            color:Colors.white70 ,
            ),
            label: "Contacts",
            ),
          ],
        ),
      ),
    );
  }
}
