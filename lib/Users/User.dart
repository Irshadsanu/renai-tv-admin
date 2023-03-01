
import 'package:flutter/material.dart';
import 'package:renai_admin/Users/UserFloting.dart';
import 'package:renai_admin/Users/Userview.dart';
import 'package:renai_admin/appbar.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: PreferredSize(child: Appbar(), preferredSize: Size.fromHeight(80)),

      body: ListView(
        children: [ Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              SizedBox(
                width: 30,
                child: Image.asset("assets/people.png",color: Colors.amber,),
              ),
              const Padding(
                padding: EdgeInsets.only(left:5),
                child: Text("USERS",style: TextStyle(color: Colors.amber),),
              ),

             
            ],
          ),
        ),
          Userview()
    ]
      ),
      floatingActionButton: const UserFloting(),
    );
  }
}
