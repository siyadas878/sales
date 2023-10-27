import 'package:flutter/material.dart';

class GapBetween extends StatelessWidget {
  const GapBetween({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}