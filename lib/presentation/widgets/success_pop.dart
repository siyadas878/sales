import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sale/core/constants/const.dart';
import 'package:animate_do/animate_do.dart';
import 'package:sale/presentation/widgets/head2.dart';

class SuccesPopUp extends StatelessWidget {
  const SuccesPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      title: const Head2(text: 'Successfully Created'),
      content: BounceInDown(
        from: 250,
        child: SizedBox(
          height: 200,
          width: 200,
          child: LottieBuilder.asset('assets/animation_lnjvd8bf.json'),
        ),
      ),
      actions: [
        TextButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(black)),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Start Shopping', style: TextStyle(color: white)),
        ),
      ],
    );
  }
}
