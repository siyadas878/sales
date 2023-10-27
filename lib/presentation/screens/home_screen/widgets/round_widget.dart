import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';

class RoundIconWidget extends StatelessWidget {
  const RoundIconWidget({
    Key? key,
    this.item,
    this.image,
    required this.height,
    required this.width,
    this.iconFunction,
    required this.color,
    this.isborder

  }) : super(key: key);

  final double height;
  final double width;
  final Widget? item;
  final String? image;
  final Function? iconFunction;
  final Color color;
  final bool? isborder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (iconFunction != null) { 
          iconFunction!(); 
        }
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: isborder==true? Border.all(color: grey):null,
          image: image != null
              ? DecorationImage(image: NetworkImage(image!), fit: BoxFit.cover)
              : null,
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: item,
      ),
    );
  }
}