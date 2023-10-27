// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:sale/core/constants/string_contants.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/models/user_model/user_model.dart';
import 'package:sale/domain/repository/user_repo.dart';
import 'package:http/http.dart' as http;

class UserDataImplement extends UserRepo {
  String getUserDataUrl = 'showprofile';
  @override
  Future<Either<MainFailure, UserModel>> getUserData() async{
     try {
      final response = await http.get(Uri.parse(baseUrl + getUserDataUrl));
      print('------object------');
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        final userData = jsonData["Profile"];
          final userModel = UserModel.fromJson(userData); 
          print("Request for profile success with status: ${response.statusCode}");
          print(response.body);
          return Right(userModel);
      } else {
        print("Request failed with status: ${response.statusCode}");
        print("Response body: ${response.body}");
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print("Error: $e");
      return const Left(MainFailure.clientFailure());
    }
  }
  
}