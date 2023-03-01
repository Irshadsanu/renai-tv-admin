import 'package:flutter/material.dart';
import 'package:renai_admin/Media/AddMedia.dart';

class Floating extends StatelessWidget {
  const Floating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 32,
        child: FloatingActionButton.extended(
          onPressed: (() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddMedia(),));
          }),
          backgroundColor: Colors.white,
          icon: SizedBox(
              height: 30,
              child: Image.asset(
                'assets/Linkicon.png',
                color: Colors.amber,
              )),
          label: const Text(
            'ADD MEDIA',
            style: TextStyle(color: Colors.amber),
          ),
        ),
      ),
    );
  }
}