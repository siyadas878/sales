import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';

permissionPopUp(
    {required BuildContext context,
    required Function accessFunction,
    required String content}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(content),
      content: Text('Do you want to $content'),
      actions: <Widget>[
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel', style: TextStyle(color: white)),
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          child: Text(content, style: const TextStyle(color: white)),
          onPressed: () async {
            accessFunction();
          },
        ),
      ],
    ),
  );
}
