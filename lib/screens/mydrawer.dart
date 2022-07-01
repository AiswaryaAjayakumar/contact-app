
import 'package:contact_app/screens/call.dart';
import 'package:contact_app/screens/side.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black26,
      child: ListView(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.lightGreen
          ),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_eFgLb2gS5sVutB67chC8HGPlfDHIelYChUoKF7cs1nCb0312D3DWyVq0X1P1AszFrA&usqp=CAU"),
          ),
            accountName: Text("All Contacts",
            ),
            accountEmail: Text("arnav@gmail.com")),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Call()));
          },

          trailing: Icon(Icons.call,
          color: Colors.green,
            size:35 ,
          ),
          title: Text("Call",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 35
          ),
          ),
        ),
        Divider(
          color: Colors.white60
        ),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SideNav()));
          },
          trailing: Icon(Icons.account_circle_rounded,
          color: Colors.blueAccent,
            size: 35,
          ),
          title: Text("Contacts",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 35
            ),
          ),
        ),
        Divider(color: Colors.white60,)
      ],
      ),
    );
  }
}
