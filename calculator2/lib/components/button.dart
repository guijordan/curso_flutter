import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;
  const Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    super.key,
    required this.cb,
  });

  const Button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    super.key,
    required this.cb,
  });

  const Button.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    super.key,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => cb(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
