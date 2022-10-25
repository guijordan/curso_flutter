import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  const AdaptativeButton({required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: onPressed,
            color: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(label),
          )
        : TextButton(
            style: TextButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.primary),
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(color: Theme.of(context).textTheme.button?.color),
            ),
          );
  }
}
