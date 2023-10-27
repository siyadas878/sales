import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';

class Head2 extends StatelessWidget {
  final String text;
  const Head2({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style:const TextStyle(fontSize: 22,color: black,fontWeight: FontWeight.bold),);
  }
}