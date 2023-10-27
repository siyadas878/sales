import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sale/core/constants/const.dart';

class ProductQuantityWidget extends StatelessWidget {
  const ProductQuantityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.27,
      height: size.height*0.05,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.circleMinus, size: 20, color: Colors.black),
            onPressed: () {},
          ),
          const Text(
            '3',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.circlePlus, size: 20, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
