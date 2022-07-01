
import 'package:contact_app/screens/call.dart';
import 'package:contact_app/screens/contact.dart';
import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigoAccent,
            title: Text("Contact",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 45
            ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(text: "Call",icon: Icon(Icons.call),),
                Tab(text: "Contacts",icon: Icon(Icons.account_circle_rounded),)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Call(),
              Contact()
            ],
          ),
        ),
      ),
    );
  }
}
