import 'dart:async';

import 'package:flutter/material.dart';
import 'package:renai_admin/Otp.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Renai TV",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),
          ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Otp()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/logo.png",
            width: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("ADMIN",style: TextStyle(fontSize: 15,color: Colors.white,decoration: TextDecoration.none)),
        ],
      ),
    );
  }
}




