// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String buttonText;
  const MyButton({
    Key? key,
    required this.buttonText,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: (Colors.deepPurple[200])!,
                spreadRadius: 5,
                blurRadius: 2),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textColor, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
