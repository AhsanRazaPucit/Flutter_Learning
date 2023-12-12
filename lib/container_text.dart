import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  const ContainerText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28.0),
    );
  }
}
