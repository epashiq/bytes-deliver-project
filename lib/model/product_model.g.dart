// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      title: json['title'] as String,
      price: (json['price'] as num).toInt(),
      image: json['image'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
      'type': instance.type,
    };
