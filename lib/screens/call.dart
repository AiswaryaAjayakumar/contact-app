
import 'package:contact_app/screens/mydrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call extends StatelessWidget {
 // const Call({Key? key}) : super(key: key);
var name=["Aju","Kannan","Parvathy","Ajay"];
var ph=[9874562103,8954716328,9758462131,8745293140];
var type=["Missed call","Outgoing","Answered","Answered"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text("All Calls",
            style: TextStyle(
                color: Colors.teal,
                fontSize: 40
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount:name.length==null?0:name.length ,

              itemBuilder: (context,index)
              {
                return Card(
                  color: Colors.blueGrey,

                  child: ListTile(
                    leading: Icon(Icons.account_circle_rounded,
                      color: Colors.brown,
                      size: 40,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),


                    title: Text(name[index].toString()),
                    subtitle: Text("Ph no: "+ph[index].toString()+"\n"+type[index].toString(),

                    style: TextStyle(
                      color: Colors.white70
                    ),
                    ),
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
