import 'package:flutter/material.dart';

import '../../../../core/constants/const.dart';

class ContainerWithBorder extends StatelessWidget {
  const ContainerWithBorder({
    super.key,
    required this.size,
    required this.item
  });
  final Widget item;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
      border: Border.all(color: grey),  
      borderRadius: BorderRadius.circular(20)
      ), 
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: item
    ));
  }
}
