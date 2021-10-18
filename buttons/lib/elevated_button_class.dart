import 'package:flutter/material.dart';

class ElevatedButtonn extends StatelessWidget {
  final Function onPressed;
  final String text;

  const ElevatedButtonn({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: Colors.blueAccent,
        fixedSize: Size(250, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    );
  }
}
