// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final String? buttonText;
  final buttonTaped;
  const MyButton(
      {Key? key, this.buttonText, this.color, this.textColor, this.buttonTaped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTaped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: (Colors.deepPurple[200])!,
                  spreadRadius: 2,
                  blurRadius: 8),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: color,
              child: Center(
                child: Text(
                  buttonText!,
                  style: TextStyle(color: textColor, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
