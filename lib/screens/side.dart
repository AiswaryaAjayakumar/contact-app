
import 'package:contact_app/screens/mydrawer.dart';
import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
 // const SideNav({Key? key}) : super(key: key);
  var name=["Aju","Athul","Chippy","Kannan","Meenu","parvathi"];
  var no=[7258964130,9864123015,8964756321,9478561230,8749561230,7598412638];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text("CONTACTS APP",
          style: TextStyle(
            color: Colors.teal,
            fontSize: 30
          ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount:name.length==null?0:name.length ,

              itemBuilder: (context,index){
                return Card(
                  color: Colors.blueGrey,

                  child: Column(
                    children: [
                      ListTile(


                        leading: Icon(Icons.account_circle_rounded,
                          color: Colors.brown,
                          size: 40,
                        ),
                        trailing: Icon(Icons.call,
                          color: Colors.green,
                          size: 30,
                        ),

                        title: Text(name[index].toString()),
                        subtitle: Text("Ph no: "+no[index].toString()),
                      ),
                      Divider(
                        color: Colors.white60,
                      ),
                      ListTile(
                        title: Center(child: Text("Message",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15
                          ),
                        )),

                        trailing: Icon(Icons.message,
                        color: Colors.blueAccent,
                          size: 30,
                        ),

                      ),
                      ListTile(
                        title: Center(child: Text("Video Call",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15
                        ),
                        )),

                        trailing: Icon(Icons.video_call,
                          color: Colors.blueAccent,
                          size: 30,
                        ),

                      )
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
