import 'package:flutter/material.dart';
import 'package:sale/core/constants/const.dart';
import 'package:sale/presentation/screens/home_screen/widgets/gap_between.dart';
import 'package:sale/presentation/screens/product_screen/widgets/quantity_button.dart';
import 'package:sale/presentation/widgets/head2.dart';
import 'package:sale/presentation/widgets/product_head.dart';
import '../home_screen/widgets/round_widget.dart';

List<Color> colorsLetter = [
  Colors.black,
  Colors.red,
  Colors.green,
  Colors.yellow
];

class ProductScreen extends StatelessWidget {
  final String img;
  final String title;
  final String description;
  final String prize;
  const ProductScreen({
    Key? key,
    required this.description,
    required this.img,
    required this.prize,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.03,
              left: size.width * 0.05,
              child: RoundIconWidget(
                color: black,
                iconFunction: () {
                  Navigator.pop(context);
                },
                item: const Icon(Icons.arrow_back, color: Colors.white),
                height: size.height * 0.05,
                width: size.width * 0.1,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: 15,
                    bottom: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GapBetween(size: size.height * 0.02),
                          Head2(text: title),
                          GapBetween(size: size.height * 0.02),
                          ProductHead(text: description, textcolor: grey),
                          GapBetween(size: size.height * 0.02),
                          const ProductHead(text: 'Size'),
                          GapBetween(size: size.height * 0.01),
                          SizedBox(
                            height: size.height * 0.05,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: size.width * 0.04),
                              itemBuilder: (context, index) {
                                return RoundIconWidget(
                                  isborder: true,
                                  color: white,
                                  height: size.height * 0.05,
                                  width: size.width * 0.10,
                                  item: Center(child: Text(index.toString())),
                                );
                              },
                            ),
                          ),
                          GapBetween(size: size.height * 0.02),
                        ],
                      ),
                      const Row(
                        children: [
                           ProductHead(text: 'Qty:  '),
                          ProductQuantityWidget(),
                        ],
                      ),
                      // const ProductHead(text: 'Colors'),
                      // GapBetween(size: size),
                      // SizedBox(
                      //   height: size.height * 0.05,
                      //   child: ListView.separated(
                      //     scrollDirection: Axis.horizontal,
                      //     itemCount: 4,
                      //     separatorBuilder: (context, index) =>
                      //         SizedBox(width: size.width * 0.04),
                      //     itemBuilder: (context, index) {
                      //       return RoundIconWidget(
                      //         color: colorsLetter[index],
                      //         height: size.height * 0.05,
                      //         width: size.width * 0.10,
                      //       );
                      //     },
                      //   ),
                      // ),
                      // GapBetween(size: size),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Head2(text: 'Rs $prize'),
                          RoundIconWidget(
                            height: size.height * 0.06,
                            width: size.width * 0.30,
                            color: black,
                            item: const Center(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.trolley,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Add cart',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
