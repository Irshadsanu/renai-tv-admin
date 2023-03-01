import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Textfield extends StatelessWidget {
  final String hintText;
  final String icon;
  const Textfield({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10,bottom: 6),
      child: TextField(
        autofocus: false,
        style: const TextStyle(fontSize: 15.0, color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
                width: 10,
                height: 10,
                child: Image.asset(
                  icon,
                  color: Colors.grey,
                )),
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.black,
          contentPadding:
          const EdgeInsets.only(left: 14.0, bottom: 15.0, top: 15.0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}

class Textfield2 extends StatelessWidget {
  final _textFieldController = TextEditingController();
  final int maxLength;
  final int maxLines;
  final String hint;

  Textfield2({
    super.key,
    required this.maxLength,
    required this.maxLines,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
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
          const EdgeInsets.only(left: 14.0, bottom: 15.0, top: 15.0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        keyboardType: TextInputType.text,
        inputFormatters: [
          LengthLimitingTextInputFormatter(120),
        ],
        onChanged: (value) {},
      ),
    );
  }
}
