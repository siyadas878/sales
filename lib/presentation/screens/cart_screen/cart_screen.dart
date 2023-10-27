import 'package:flutter/material.dart';
import 'package:sale/presentation/screens/cart_screen/widgets/product_image_inlist.dart';
import 'package:sale/presentation/screens/home_screen/tshir_data.dart';
import 'package:sale/presentation/screens/nav_screen/nav_screen.dart';
import 'package:sale/presentation/screens/profile_screen/widgets/container_with_border.dart';
import 'package:sale/presentation/widgets/head2.dart';
import 'package:sale/presentation/widgets/product_head.dart';
import 'package:sale/presentation/widgets/small_text_grey.dart';
import '../../../core/constants/const.dart';
import '../home_screen/widgets/gap_between.dart';
import '../home_screen/widgets/round_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavScreen(),
                    ));
              },
              item: const Icon(Icons.arrow_back, color: Colors.white),
              height: size.height * 0.05,
              width: size.width * 0.1,
            ),
            GapBetween(size: size.height*0.02),
            const Head2(text: 'My Cart'),
            GapBetween(size: size.height*0.02),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 7),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ProductInsideList(
                                height: size.height * 0.13,
                                width: size.width * 0.25,
                                image: tShirts[index].imageUrl),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProductHead(text: tShirts[index].name),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Container(
                                      constraints: BoxConstraints(
                                          maxWidth: size.width * 0.6),
                                      child: SmallTextWithGrey(
                                          text: tShirts[index].description)),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  ProductHead(
                                      text: tShirts[index].price.toString())
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ContainerWithBorder(size: size, 
            item:const Padding(
              padding:  EdgeInsets.symmetric(horizontal:8.0),
              child:  Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductHead(text: 'Subtotal:'),
                      ProductHead(text:'Rs 80'),
                    ],
                  ),
                  Divider(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductHead(text: 'Shipping:'),
                      ProductHead(text:'Rs 15'),
                    ],
                  ),
                  Divider(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductHead(text: 'Bag total:'),
                      ProductHead(text:'Rs 95'),
                    ],
                  )
                ],
              ),
            )),
            GapBetween(size: size.height*0.02),
            RoundIconWidget(
              height: size.height*0.07, 
              width: double.infinity, 
              color: black,
              item:const Center(child: ProductHead(text: 'Proceed to payment',textcolor: white,))
              ),
              GapBetween(size: size.height*0.02),
          ])),
    ));
  }
}

