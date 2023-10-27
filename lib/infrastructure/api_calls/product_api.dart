// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:sale/core/constants/string_contants.dart';
import 'package:sale/domain/core/failures/main_failure.dart';
import 'package:sale/domain/models/product_model/product_model.dart';
import 'package:sale/domain/repository/product_repo.dart';
import 'package:http/http.dart' as http;

class ProductRepoImplementation extends ProductRepo {
  String getProductsUrl = 'allproducts?page=1';

  @override
  Future<Either<MainFailure, List<ProductModel>>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(baseUrl + getProductsUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        final productsList = jsonData['Products']['PaginatedProducts'];
        List<ProductModel> products =
            List<ProductModel>.from(productsList.map((productData) {
          return ProductModel.fromJson(productData);
        })).toList();
        print("Request success with status: ${response.statusCode}");
        return Right(products);
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
