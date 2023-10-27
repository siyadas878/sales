// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(name: "ID") required int id,
    @JsonKey(name: "brandname") required String brand,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "item") required String item,
    @JsonKey(name: "price") required int price,
    @JsonKey(name: "qty") required int qty,
    @JsonKey(name: "category_id") required int category,
    @JsonKey(name: "imageurl") required String imgUrl,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
