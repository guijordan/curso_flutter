import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao({
    required this.texto,
    required this.icone,
    this.click,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 20,
          ),
          textStyle: const TextStyle(
            fontSize: 25,
          )),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              size: 35,
            ),
          ),
          Text(texto)
        ],
      ),
    );
  }
}
