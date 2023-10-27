import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';

class Head1 extends StatelessWidget {
  final String text;
  final bool? isShodow;
  const Head1({this.isShodow, super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          shadows: isShodow == true
              ? [
                  const Shadow(
                    color: white,
                    offset: Offset(1, 1),
                  )
                ]
              : null),
    );
  }
}
