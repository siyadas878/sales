// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sale/core/constants/const.dart';
import 'package:sale/presentation/screens/signup_screen/widgets/text_field_widget.dart';
import 'package:sale/presentation/widgets/warning_snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../application/signup_bloc/sign_up_bloc.dart';
import '../../widgets/head_title_widget.dart';
import '../signup_screen/widgets/bott0m_text_auth.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.shirt,
                          size: 70,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    const HeadTitleWidget(
                        title: 'LogIn', subtitle: 'Start your shoping'),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFieldWidget(
                      controller: _mobile,
                      content: 'Number',
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length > 10 ||
                            value.length < 10) {
                          return 'Please enter your Number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFieldWidget(
                      controller: _password,
                      content: 'Password',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: BlocBuilder<SignUpBloc, SignUpState>(
                          builder: (context, state) {
                            return ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return grey;
                                    }
                                    return black;
                                  },
                                ),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  BlocProvider.of<SignUpBloc>(context).add(
                                      SignUpEvent.logIn(
                                          mobile: _mobile.text,
                                          password: _password.text));

                                  await Future.delayed(
                                      const Duration(seconds: 3));

                                  print(
                                      '----------------${state.isLoginSuccessful}');

                                  if (state.isLoginSuccessful == true) {
                                    warning(context, 'Successfully Login');
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    prefs.setBool('isLoggedIn', true);
                                    Navigator.pushNamed(context, '/');
                                  } else {
                                    warning(context, 'Error in Login');
                                  }
                                }
                              },
                              child: state.isLoading == true
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: white, size: 10)
                                  : const Text(
                                      'LogIn',
                                      style: TextStyle(color: white),
                                    ),
                            );
                          },
                        )),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BottomTextOfAuth(
                          buttonfunction: () {
                            Navigator.pushNamed(context, 'signup');
                          },
                          buttontext: ' SignUp',
                          content: 'Dont have an account',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
