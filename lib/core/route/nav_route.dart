import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sale/application/nav_boc/nav_bloc.dart';
import 'package:sale/presentation/screens/all_products_screen/all_products_Screen.dart';
import 'package:sale/presentation/screens/login_screen/login_screen.dart';
import 'package:sale/presentation/screens/nav_screen/nav_screen.dart';
import 'package:sale/presentation/screens/splash_screen/splash_screen.dart';
import '../../presentation/screens/signup_screen/signup_screen.dart';

class RouteGenerator {
  final NavBloc navbloc = NavBloc();
  Route<dynamic> generateRoute(RouteSettings settings) {
    // final arg = settings.arguments;
    switch (settings.name) {
      case 'allproductsscreen':
      return MaterialPageRoute(builder: (context) =>const AllProductsScreen(),);
      case 'splash':
      return MaterialPageRoute(builder: (context) =>const SplashScreen(),);
      case '/':
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider<NavBloc>.value(
              value: navbloc,
              child:const NavScreen(),
            );
          },
        );
      case 'signup':
      return MaterialPageRoute(builder: (context) => SignUpScreen(),);
      case 'login':
      return MaterialPageRoute(builder: (context) => LoginScreen(),);
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text('Error'),
          ),
        );
      },
    );
  }
}
