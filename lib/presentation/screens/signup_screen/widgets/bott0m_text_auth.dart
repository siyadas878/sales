import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';

class BottomTextOfAuth extends StatelessWidget {
  final String content;
  final String buttontext;
  final Function() buttonfunction;
  const BottomTextOfAuth({
    super.key,
    required this.buttontext,
    required this.content,
    required this.buttonfunction
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$content,'),
        InkWell(
          onTap: buttonfunction,
          child: Text(buttontext,
          style:const TextStyle(color: grey),))
      ],
    );
  }
}