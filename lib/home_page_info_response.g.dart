// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePageInfoResponseImpl _$$HomePageInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HomePageInfoResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      cod: (json['cod'] as num).toInt(),
    );

Map<String, dynamic> _$$HomePageInfoResponseImplToJson(
        _$HomePageInfoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };
