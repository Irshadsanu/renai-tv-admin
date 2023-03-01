import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:renai_admin/Categories.dart';
import 'package:renai_admin/verification.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png",
              width: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 70,
                left: 80,
                right: 80,
                bottom: 35,

              ),
              child: TextField(
                cursorColor: Colors.white,
                showCursor: false,
                style: TextStyle(color: Colors.white),
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
                keyboardType: TextInputType.number,
              ),
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

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Verification()));
                  },
                  child: const Text("GET OTP")),
            ),
          ],
        ),
      ),
    );
  }
}
