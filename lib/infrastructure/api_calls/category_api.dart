// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:sale/core/constants/string_contants.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/models/category_mode/category_model.dart';
import 'package:sale/domain/repository/category_repo.dart';
import 'package:http/http.dart' as http;

class CategoryRepoImplement extends CategoryRepo {
  String getAllCateforyUrl = 'categoriesview?page=1';
  @override
  Future<Either<MainFailure, List<CategoryModel>>> getAllCategory() async{
    try {
      final response = await http.get(Uri.parse(baseUrl + getAllCateforyUrl));
      print('hello----------------');
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        final categoryList = jsonData['Categories']['Categories'];
        List<CategoryModel> categories =
            List<CategoryModel>.from(categoryList.map((productData) {
          return CategoryModel.fromJson(productData);
        })).toList();
        print("Request success with status: ${response.statusCode}");
        return Right(categories);
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