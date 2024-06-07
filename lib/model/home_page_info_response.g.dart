// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePageInfoResponseImpl _$$HomePageInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HomePageInfoResponseImpl(
      status: json['status'] as String,
      paths: (json['paths'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$HomePageInfoResponseImplToJson(
        _$HomePageInfoResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'paths': instance.paths,
    };
