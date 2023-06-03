import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  SquareButton({required this.onPressed,required this.icon});

  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: icon,
      color: Colors.white30,
      minWidth: 0.0,
      padding: EdgeInsets.all(12.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
