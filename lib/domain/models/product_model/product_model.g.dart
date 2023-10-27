// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['ID'] as int,
      brand: json['brandname'] as String,
      description: json['description'] as String,
      item: json['item'] as String,
      price: json['price'] as int,
      qty: json['qty'] as int,
      category: json['category_id'] as int,
      imgUrl: json['imageurl'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'brandname': instance.brand,
      'description': instance.description,
      'item': instance.item,
      'price': instance.price,
      'qty': instance.qty,
      'category_id': instance.category,
      'imageurl': instance.imgUrl,
    };
