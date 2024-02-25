import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.position, required this.onClick});

  final String position;
  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: onClick,
        child: Text(position));
  }
}
