import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sale/core/constants/const.dart';
import 'package:sale/presentation/screens/signup_screen/widgets/text_field_widget.dart';
import '../../../../application/signup_bloc/sign_up_bloc.dart';
import '../../../../domain/repository/authentication_repo.dart';
import '../../../../infrastructure/api_calls/authentication.dart';

class ShowOtpDialog extends StatelessWidget {
  final String? otpkeydata;
  ShowOtpDialog({super.key, this.otpkeydata});

  final TextEditingController _otpController = TextEditingController();
  final GlobalKey<FormState> _otpformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Authentication auth = SignUpAuthentication();
    final SignUpBloc signUpBloc = SignUpBloc(auth);
    return Form(
      key: _otpformKey,
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return AlertDialog(
            backgroundColor: white,
            title: const Text('Enter OTP'),
            content: TextFieldWidget(
              controller: _otpController,
              content: 'OTP',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    value.length > 6 ||
                    value.length < 6) {
                  return 'Please enter your OTP';
                }
                return null;
              },
            ),
            actions: [
              TextButton(
                style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(black)),
                onPressed: () async {
                  if (_otpformKey.currentState!.validate()) {
                    signUpBloc.auth
                        .otpVerification(_otpController.text, otpkeydata??'');
                        Navigator.pop(context);
                  }
                },
                child: const Text('Submit',style: TextStyle(color: white),),
              ),
            ],
          );
        },
      ),
    );
  }
}
