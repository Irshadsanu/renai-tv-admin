
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text ;
  final Color COLORS;
  const Buttons({Key? key, required this.text, required this.COLORS}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 120,
          right: 120,
        ),
        child: TextButton(onPressed: (){},
          style: TextButton.styleFrom(backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            child:Text(text,style: TextStyle(color: COLORS ),),

        ),
      ),
    );
  }
}
