
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
 // const Contact({Key? key}) : super(key: key);
var name=["Aju","Athul","Chippy","Kannan","Meenu","Parvathi"];
var no=[7258964130,9864123015,8964756321,9478561230,8749561230,7598412638];
  @override
  Widget build(BuildContext context) {
    return Container(
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
                   size: 40,
                 ),

                 title: Text(name[index].toString()),
                 subtitle: Text("Ph no: "+no[index].toString()),
               ),

             ],
            ),
          );
          }
      ),
    );
  }
}
