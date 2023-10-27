// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:sale/core/constants/string_contants.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'dart:convert';
import 'package:sale/domain/repository/authentication_repo.dart';

String signUpUrl = 'signupotp';
String otpUrl = 'signupotpvalidation';
String logInUrl ='loginwithpassord';
String logoutUrl='logout';

class SignUpAuthentication implements Authentication {
  @override
  Future<Either<MainFailure, String>> signUp(String fname, String lname,
      String email, String mobile, String password) async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + signUpUrl),
        body: jsonEncode({
          "firstname": fname,
          "lastname": lname,
          "email": email,
          "phone": mobile,
          "password": password,
        }),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        print(response.body);
        final String otpKey = jsonData["Key"];
        print('------$otpKey');
        return Right(otpKey); 
      } else {
        print("Request failed with status: ${response.statusCode}");
        print("Response body: ${response.body}");
        return const Left( MainFailure.serverFailure());
      }
    } catch (e) {
      print("Error: $e");
      return const Left( MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, void>> otpVerification(String otp,String otpKey) async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + otpUrl),
        body: jsonEncode({
          "key": otpKey,
          "otp": otp
        }),
      );

      if (response.statusCode == 200) {
        print(response.body);
        return const Right(null);
      } else {
        print("Request failed with status: ${response.statusCode}");
        print("Response body: ${response.body}");
        return const Left( MainFailure.serverFailure());
      }
    } catch (e) {
      print("Error: $e");
      return const Left( MainFailure.clientFailure());
    }
  }
  
  @override
  Future<Either<MainFailure, void>> logIn(String mobile, String password)async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + logInUrl),
        body: jsonEncode({
          "phone": mobile,
          "password": password
        }),
      );

      if (response.statusCode == 200) {
        print(response.body);
        return const Right(null);
      } else {
        print("Request failed with status: ${response.statusCode}");
        print("Response body: ${response.body}");
        return const Left( MainFailure.serverFailure());
      }
    } catch (e) {
      print("Error: $e");
      return const Left( MainFailure.clientFailure());
    }
  }
  
  @override
  Future<Either<MainFailure, void>> logOut() async{
    try {
      final response = await http.post(
        Uri.parse(baseUrl + logoutUrl),
      );

      if (response.statusCode == 200) {
        print(response.body);
        return const Right(null);
      } else {
        print("Request failed with status: ${response.statusCode}");
        print("Response body: ${response.body}");
        return const Left( MainFailure.serverFailure());
      }
    } catch (e) {
      print("Error: $e");
      return const Left( MainFailure.clientFailure());
    }
  }
}
