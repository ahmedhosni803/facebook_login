import 'package:flutter/material.dart';

class Fild extends StatelessWidget {
  String text;
  Fild(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: text,
              hintStyle: const TextStyle(fontSize: 25),
              labelText: text,
              labelStyle: const TextStyle(fontSize: 25, color: Colors.white),
              border: const UnderlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid))),
          keyboardType: TextInputType.emailAddress,
        )
      ],
    );
  }
}
