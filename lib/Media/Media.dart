import 'package:flutter/material.dart';
import 'package:renai_admin/appbar.dart';

import 'Floating.dart';
import 'Scroll.dart';

class Media extends StatelessWidget {
  const Media({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const Floating(),
        backgroundColor: const Color.fromARGB(85, 85, 85, 100),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Appbar(),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                'MEDIA',
                style: TextStyle(color: Colors.amber[200]),
              ),
            ),
            Scroll(),
          ]),
        ));
  }
}