// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sale/application/signup_bloc/sign_up_bloc.dart';
import 'package:sale/application/user_bloc/user_bloc.dart';
import 'package:sale/presentation/screens/profile_screen/widgets/container_with_border.dart';
import 'package:sale/presentation/widgets/permission_popup.dart';
import 'package:sale/presentation/widgets/product_head.dart';
import 'package:sale/presentation/widgets/small_text_grey.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constants/const.dart';
import '../cart_screen/widgets/product_image_inlist.dart';
import '../home_screen/widgets/gap_between.dart';
import '../home_screen/widgets/round_widget.dart';
import '../nav_screen/nav_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<UserBloc>(context).add(const GetUserData());
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
                    iconFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NavScreen(),
                          ));
                    },
                    item: const Icon(Icons.arrow_back, color: Colors.white),
                    height: size.height * 0.05,
                    width: size.width * 0.1,
                  ),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return RoundIconWidget(
                          item: const Icon(
                            Icons.logout,
                            color: white,
                          ),
                          iconFunction: () async {
                            permissionPopUp(
                              content: 'LogOut',
                              context: context,
                              accessFunction: () async {
                                BlocProvider.of<SignUpBloc>(context)
                                    .add(const SignUpEvent.logOut());
                                    await Future.delayed(const Duration(seconds: 5));
                                if (state.isLoginSuccessful == true) {
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setBool('isLoggedIn', false);
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, 'login', (route) => false);
                                }
                              },
                            );
                          },
                          height: size.height * 0.05,
                          width: size.width * 0.1,
                          color: black);
                    },
                  )
                ],
              ),
              GapBetween(size: size.height * 0.02),
              ContainerWithBorder(
                size: size,
                item: BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    final userdata = state.getUserData;
                    if (state.isLoading) {
                      const Center(child: CircularProgressIndicator(),);
                    } else if(userdata==null){

                    }
                      return Row(
                        children: [
                          ProductInsideList(
                            height: size.height * 0.1,
                            width: size.width * 0.2,
                            image:
                                'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg',
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 ProductHead(text: state.getUserData!.fname?? 'siyad'),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                Container(
                                    constraints: BoxConstraints(
                                        maxWidth: size.width * 0.6),
                                    child: SmallTextWithGrey(
                                        text: state.getUserData!.email??'Siyadas878@gmail.com')),
                              ],
                            ),
                          )
                        ],
                      );
                  },
                ),
              ),
              GapBetween(size: size.height * 0.02),
              ContainerWithBorder(
                  size: size,
                  item: const Column(
                    children: [
                      ListTile(
                        leading: Card(
                          child: Icon(
                            Icons.man,
                            size: 35,
                          ),
                        ),
                        title: ProductHead(text: 'Personal Details'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      ListTile(
                        leading: Card(child: Icon(Icons.trolley, size: 35)),
                        title: ProductHead(text: 'My Orders'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      ListTile(
                        leading: Card(child: Icon(Icons.favorite, size: 35)),
                        title: ProductHead(text: 'Favorites'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      ListTile(
                        leading:
                            Card(child: Icon(Icons.local_shipping, size: 35)),
                        title: ProductHead(text: 'Shipping Address'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      ListTile(
                        leading: Card(child: Icon(Icons.settings, size: 35)),
                        title: ProductHead(text: 'Settings'),
                        trailing: Icon(Icons.navigate_next),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
