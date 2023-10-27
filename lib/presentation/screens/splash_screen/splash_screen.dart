import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sale/core/constants/const.dart';
import 'package:sale/presentation/widgets/warning_snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    wait(context);
    // var size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingAnimationWidget.staggeredDotsWave(color: black, size: 80)
            ]
          ),
        ),
      ),
    );
  }
}

wait(context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? login = prefs.getBool('isLoggedIn')??false;
  var connectivityResult = await Connectivity().checkConnectivity();
  await Future.delayed(const Duration(milliseconds: 3700));
  if (connectivityResult == ConnectivityResult.none) {
    warning(context, 'No Interner Connection');
  }
  login == true
      ? Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false)
      : Navigator.pushNamedAndRemoveUntil(context, 'login', (route) => false);
}
