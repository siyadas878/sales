import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sale/application/category_bloc/category_bloc.dart';
import 'package:sale/core/constants/const.dart';
import 'package:sale/presentation/widgets/head1.dart';
import '../home_screen/widgets/gap_between.dart';
import '../home_screen/widgets/round_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoryBloc>(context).add(const GetAllCategory());
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
            const SearchBar(
              hintText: 'Search category',
            ),
            GapBetween(size: size.height * 0.02),
            Expanded(
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.getAllCategory!.length,
                    itemBuilder: (context, index) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        final category = state.getAllCategory;
                        if (category == null || category.isEmpty) {
                          return const Center(
                            child: Text('No products available.'),
                          );
                        }
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Stack(
                            children: [
                              Container(
                                height: size.height * 0.15,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: grey,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0, 2),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         tShirtsCategories[index].imageUrl),
                                    //     // opacity: 100,
                                    //     fit: BoxFit.cover)
                                        ),),
                              Positioned(
                                  left: 5,
                                  right: 0,
                                  bottom: 0,
                                  child: Head1(
                                    text: category[index].sleeve,
                                    isShodow: false,
                                  )),
                            ],
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            )
          ])),
    ));
  }
}
