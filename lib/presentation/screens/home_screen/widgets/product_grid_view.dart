import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sale/application/product_bloc/product_bloc.dart';
import 'package:sale/presentation/screens/product_screen/product_screen.dart';
import 'package:sale/presentation/widgets/small_text_grey.dart';
import '../../../../core/constants/const.dart';
import '../../../widgets/product_head.dart';

class ProductGridView extends StatelessWidget {
  final Size size;

  const ProductGridView({
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductBloc>(context).add(const GetAllProducts());
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          final products = state.getAllProducts;
          if (products == null || products.isEmpty) {
            return const Center(
              child: Text('No products available.'),
            );
          }

          return GridView.builder(
            padding: const EdgeInsets.only(top: 0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.5,
            ),
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(
                        description: '${products[index].brand} ${products[index].item} T-shits',
                        img: products[index].imgUrl,
                        prize: products[index].price.toString(),
                        title: products[index].description,
                      ),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(products[index].imgUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    ProductHead(
                      text: products[index].description,
                      textalign: TextAlign.center),
                    SizedBox(height: size.height * 0.01),
                    SmallTextWithGrey(text: '${products[index].brand} ${products[index].item} T-shits'),
                    SizedBox(height: size.height * 0.01),
                    ProductHead(text: "Rs ${products[index].price.toString()}"),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
