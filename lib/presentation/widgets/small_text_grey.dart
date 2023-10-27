import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';

class SmallTextWithGrey extends StatelessWidget {
  final String text;

  const SmallTextWithGrey({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      textAlign: TextAlign.start,
      softWrap: true, // Allow text to wrap to the next line
      style: const TextStyle(
        fontSize: 13,
        color: grey,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
