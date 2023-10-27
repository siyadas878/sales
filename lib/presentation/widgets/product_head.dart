import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';

class ProductHead extends StatelessWidget {
  final String text;
  final Color? textcolor;
  final TextAlign? textalign;
  const ProductHead({
    super.key,
    this.textcolor,
    required this.text,
    this.textalign
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
    textAlign: textalign,
    style: TextStyle(fontSize: 15,color: textcolor ?? black,fontWeight: FontWeight.bold),);
  }
}