import 'package:flutter/material.dart';
import 'package:sale/presentation/widgets/small_text_grey.dart';

import 'head2.dart';

class HeadTitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const HeadTitleWidget({
    super.key,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Head2(text: title),
        SmallTextWithGrey(text: subtitle)
      ],
    );
  }
}