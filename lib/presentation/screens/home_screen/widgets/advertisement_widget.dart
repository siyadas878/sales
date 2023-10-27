import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> images = [
  'https://blog.placeit.net/wp-content/uploads/2017/03/facebook-ad-image-promoting-t-shirts-1024x536.png',
  'https://i.pinimg.com/originals/33/66/d6/3366d610aa2e1cd2fa668a3730d8b649.jpg',
  'https://cdn.create.vista.com/common/63458773-6492-49a7-82a4-3727906dca60_1024.jpg'
];

class Advertisement extends StatelessWidget {
  const Advertisement({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images.map((image) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: size.height * 0.2,
            width: size.width, // Set width to full screen width
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 3),
                  blurRadius: 4,
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: size.height * 0.2,
        aspectRatio: 16 / 9,
        viewportFraction: 0.9,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
