
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../appbar.dart';

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: const PreferredSize(preferredSize: Size.fromHeight(80),child: Appbar()),
      body: ListView(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset("assets/add-user.png",width: 35,color: Colors.amber,),
                const Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text("ADD USER",style: TextStyle(color: Colors.amber),),
                )
              ],
            ),
          ),

          Container(
            width: 350,
            height: 400,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),
                color: Colors.black
            ),
            child: Column(
              children:  [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: CircleAvatar(radius: 35,
                    backgroundColor: Colors.white,
                    child: Image.asset("assets/account.png",width: 40,color: Colors.grey,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                    right: 60,
                  ),
                  child: TextField(
                    cursorColor: Colors.white,
                    showCursor: false,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(hintText: "NAME",
                      hintStyle: TextStyle(color: Colors.white24,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                    ),
                    inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                    keyboardType: TextInputType.text),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                    right: 60,
                  ),
                  child: TextField(
                    cursorColor: Colors.white,
                    showCursor: false,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(hintText: "MOBILE NUMBER",
                      hintStyle: TextStyle(color: Colors.white24,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                    right: 60
                  ),
                  child: TextField(
                      cursorColor: Colors.white,
                      showCursor: false,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(hintText: "ADDRESS",
                        hintStyle: TextStyle(color: Colors.white24,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white24),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white24),
                        ),
                      ),
                      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                      keyboardType: TextInputType.text),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                    right: 60,
                    bottom: 40
                  ),
                  child: TextField(
                      cursorColor: Colors.white,
                      showCursor: false,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(hintText: "DESIGNATION",
                        hintStyle: TextStyle(color: Colors.white24,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white24),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white24),
                        ),
                      ),
                      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                      keyboardType: TextInputType.text),
                ),

                SizedBox(
                  width: 250,
                  height: 27,
                  child: ElevatedButton(
                      style:
                      ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        backgroundColor: Colors.white, // background (button) color
                        foregroundColor: Colors.black, // foreground (text) color
                      ),
                      onPressed: (){},
                      child: const Text("ADD USER")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
