import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sale/application/user_bloc/user_bloc.dart';
import 'package:sale/core/constants/const.dart';
import 'package:sale/presentation/screens/category_screen/category_screen.dart';
import 'package:sale/presentation/screens/home_screen/widgets/advertisement_widget.dart';
import 'package:sale/presentation/screens/home_screen/widgets/gap_between.dart';
import 'package:sale/presentation/screens/home_screen/widgets/product_grid_view.dart';
import 'package:sale/presentation/screens/home_screen/widgets/round_widget.dart';
import 'package:sale/presentation/widgets/head2.dart';
import 'package:sale/presentation/widgets/small_text_grey.dart';
import '../../widgets/head1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundIconWidget(
                    color: black,
                    item: const Icon(Icons.list, color: Colors.white),
                    height: size.height * 0.05,
                    width: size.width * 0.1,
                  ),
                  RoundIconWidget(
                    iconFunction: () async{
                      BlocProvider.of<UserBloc>(context).add(const GetUserData());
                    },
                    color: black,
                    image:
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg',
                    height: size.height * 0.05,
                    width: size.width * 0.1,
                  )
                ],
              ),
              GapBetween(size: size.height*0.02),
              const Head1(text: 'Good Morning'),
              GapBetween(size: size.height*0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: size.height * 0.065,
                      width: size.width * 0.75,
                      child: const SearchBar(
                        backgroundColor: MaterialStatePropertyAll(white),
                        hintText: 'Search',
                      )),
                  RoundIconWidget(
                    color: black,
                    iconFunction: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const CategoryScreen()));
                    },
                    item: const Icon(Icons.list, color: Colors.white),
                    height: size.height * 0.06,
                    width: size.width * 0.12,
                  ),
                ],
              ),
              GapBetween(size: size.height*0.02),
              Advertisement(size: size),
              GapBetween(size: size.height*0.02),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Head2(text: 'New Arrivals'),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'allproductsscreen');
                    },
                    child:const SmallTextWithGrey(text: 'view all'))
                ],
              ),
              SizedBox(height: size.height*0.01),
              Expanded(child: 
              ProductGridView(size: size)
              )
            ],
          ),
        ),
      ),
    );
  }
}


