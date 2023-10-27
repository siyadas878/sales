import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sale/core/constants/const.dart';
import 'package:sale/presentation/screens/signup_screen/widgets/bott0m_text_auth.dart';
import 'package:sale/presentation/screens/signup_screen/widgets/text_field_widget.dart';
import 'package:sale/presentation/widgets/success_pop.dart';
import '../../../application/signup_bloc/sign_up_bloc.dart';
import '../../widgets/head_title_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final TextEditingController _email = TextEditingController();
  final TextEditingController _first = TextEditingController();
  final TextEditingController _last = TextEditingController();
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const SuccesPopUp();
                              },
                            );
                          },
                          child:const Icon(
                            FontAwesomeIcons.shirt,
                            size: 70,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    const HeadTitleWidget(
                        title: 'Sign Up', subtitle: 'Create a new account'),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWidget(
                            controller: _first,
                            content: 'First Name',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Name';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: size.width * 0.02),
                        Expanded(
                          child: TextFieldWidget(
                            controller: _last,
                            content: 'Last Name',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Last Name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFieldWidget(
                      controller: _email,
                      content: 'Email',
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value)) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },
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
                    BlocBuilder<SignUpBloc, SignUpState>(
                      builder: (context, state) {
                        return SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Colors.red;
                                    }
                                    return black;
                                  },
                                ),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  BlocProvider.of<SignUpBloc>(context).add(SignUpEvent.signUp(
                                    context: context,
                                    fname: _first.text,
                                    lname: _first.text,
                                    email: _email.text,
                                    mobile: _mobile.text,
                                    password: _password.text,
                                  ));
                                  _first.clear();
                                  _first.clear();
                                  _email.clear();
                                  _password.clear();
                                  _mobile.clear();
                                }
                              },
                              child: Text(
                                state.isLoading == true ? 'Loading' : 'Sign Up',
                                style: const TextStyle(color: white),
                              ),
                            ));
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BottomTextOfAuth(
                          buttonfunction: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          buttontext: ' LogIn',
                          content: 'Already have an account',
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
