import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sale/presentation/screens/home_screen/home_screen.dart';
import '../../../application/nav_boc/nav_bloc.dart';
import '../profile_screen/profile_screen.dart';
import '../cart_screen/cart_screen.dart';

List<Widget> screens=[
  HomeScreen(),
  CartScreen(),
  ProfileScreen(),
];

class NavScreen extends StatelessWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavBloc, NavState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return Scaffold(
          body: screens.elementAt(state.index),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.index,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            onTap: (value) {
              BlocProvider.of<NavBloc>(context).add(NavEvent.selectIndex(index: value));
            },
            items:const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.trolley),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              
            ],
          ),
        );
      },
    );
  }
}
