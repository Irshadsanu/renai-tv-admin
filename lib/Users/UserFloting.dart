import 'package:flutter/material.dart';
import 'package:renai_admin/Users/AddUser.dart';

class UserFloting extends StatelessWidget {
  const UserFloting({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: FloatingActionButton(
        onPressed: (() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddUser(),));
        }),
        backgroundColor: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/add-user.png",color: Colors.amber,width: 35,),
          const Text(
            'ADD USER',
            style: TextStyle(
                color: Colors.amber,
                fontSize: 6,
                fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}