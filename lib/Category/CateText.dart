import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CateText extends StatelessWidget {
  final String hintText;

  const CateText({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: TextField(
        autofocus: false,
        style: const TextStyle(fontSize: 15.0, color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.black,
          contentPadding:
          const EdgeInsets.only(left: 14.0, bottom: 14.0, top: 14.0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}

class CateText2 extends StatelessWidget {
  final _textFieldController = TextEditingController();
  final int maxLength;
  final int maxLines;
  final String hint;

  CateText2({
    super.key,
    required this.maxLength,
    required this.maxLines,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: TextField(
        controller: _textFieldController,
        maxLength: maxLength,
        maxLines: maxLines,
        autofocus: false,
        style: const TextStyle(fontSize: 15.0, color: Colors.white),
        decoration: InputDecoration(
          // suffixIcon: const Icon(Icons.copy, color: Colors.grey),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.black,
          contentPadding:
          const EdgeInsets.only(left: 14.0, bottom: 14.0, top: 14.0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        keyboardType: TextInputType.text,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            120,
          ),
        ],
        onChanged: (value) {},
      ),
    );
  }
}

class CateButton extends StatelessWidget {
  const CateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 100.0,
        right: 100,
      ),
      child: TextButton(
        onPressed: (() {}),
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 20,
                width: 30,
                child: Image.asset(
                  'assets/categories.png',
                  color: Colors.amber,
                )),
            const Text(
              'ADD CATEGORY',
              style: TextStyle(color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
