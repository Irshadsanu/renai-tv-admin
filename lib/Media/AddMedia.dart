import 'package:flutter/material.dart';
import 'package:renai_admin/Media/Buttons.dart';
import 'package:renai_admin/Media/Related.dart';
import 'package:renai_admin/Media/TextField.dart';
import 'package:renai_admin/appbar.dart';

class AddMedia extends StatelessWidget {
  const AddMedia({Key? key}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                SizedBox(width:15,child: Image.asset("assets/Linkicon.png",color: Colors.amber,)),
                const Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Text("ADD MEDIA",style: TextStyle(color: Colors.amber),),
                )
              ],
            ),
          ),
          const Textfield(hintText:"PASTE LINK" ,icon:("assets/paste.png")),
          Textfield2(maxLength: 30, maxLines: 1, hint: "APPLICATION"),
          Textfield2(maxLength: 70, maxLines: 3, hint: "APPLICATION"),
          const Textfield(hintText: "SELECT CATGORY", icon: ("assets/arrow.png")),
          const Textfield(hintText: "SELECT FILE TYPE", icon: ("assets/arrow.png")),
          const Buttons(text: "ADD RELATED MEDIA",COLORS: Colors.black87,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("RELATED CONTENTS",style: TextStyle(color: Colors.white),),
          ),
          Related(),
          const Buttons(text: "UPLOAD",COLORS: Colors.black54,),
        ],
      ),
    );
  }
}
