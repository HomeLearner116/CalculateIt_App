import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final double textSize;
  final int buttonColor;
  // final int textColor;
  final Function callback;

  const Button(
      {required this.text,
      required this.textSize,
      required this.buttonColor,
      // required this.textColor,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Color(buttonColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () => callback(text),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: textSize,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
