import 'package:flutter/material.dart';
import 'package:renai_admin/appbar.dart';

import 'CateScroll.dart';
import 'CateText.dart';

class Categ extends StatelessWidget {
  const Categ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Appbar(),
      ),
      body: ListView(
        children: [
          const CateText(
            hintText: 'NAME',
          ),
          Stack(
            children: [
              const CateText(
                hintText: 'ADD THUMBNAIL',
              ),
              Positioned(
                right: 22,
                top: 26,
                child: Container(
                  alignment: Alignment.topRight,
                  height: 17,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'JPG',
                      style: TextStyle(color: Colors.amber, fontSize: 13),
                    ),
                  ),
                ),
              ),
            ],
          ),
          CateText2(
            hint: 'DESCRIPTION',
            maxLength: 30,
            maxLines: 3,
          ),
          const CateButton(),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, left: 12),
            child: Text(
              'CATEGORIES',
              style: TextStyle(color: Colors.amber, fontSize: 15),
            ),
          ),
          CateScroll()
        ],
      ),
    );
  }
}