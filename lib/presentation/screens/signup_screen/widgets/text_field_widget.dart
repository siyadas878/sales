import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.content,
    required this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String content;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        height: size.height*0.06,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: content,
            labelStyle:const TextStyle(color: grey),
            border: OutlineInputBorder(
              borderSide:const BorderSide(color: grey),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:const BorderSide(color: black),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:const BorderSide(color: Colors.red),
            ),
          ),
          validator: validator,
        ),
      ),
    );
  }
}
