import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  const TextLink({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed!(),
      child: Text(
        text!,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    );
  }
}
