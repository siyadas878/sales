import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';
import 'package:sale/presentation/screens/home_screen/widgets/product_grid_view.dart';
import '../home_screen/widgets/gap_between.dart';
import '../home_screen/widgets/round_widget.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            RoundIconWidget(
              color: black,
              iconFunction: () {
                Navigator.pop(context);
              },
              item: const Icon(Icons.arrow_back, color: Colors.white),
              height: size.height * 0.05,
              width: size.width * 0.1,
            ),
            
            GapBetween(size: size.height * 0.02),
            Expanded(
              child: ProductGridView(size: size)
            )
          ])),
    ));
  }
}
