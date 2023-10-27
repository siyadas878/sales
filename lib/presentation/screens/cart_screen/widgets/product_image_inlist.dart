import 'package:flutter/material.dart';

class ProductInsideList extends StatelessWidget {
  const ProductInsideList({
    Key? key,
    required this.height,
    required this.width,
    this.image,
  }) : super(key: key);

  final String? image;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(image!),
          fit: BoxFit.cover 
        ),
      ),
    );
  }
}
