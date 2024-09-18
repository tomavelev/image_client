// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageSearchResponseImpl _$$ImageSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageSearchResponseImpl(
      hits: (json['hits'] as List<dynamic>)
          .map((e) => PixabayImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$ImageSearchResponseImplToJson(
        _$ImageSearchResponseImpl instance) =>
    <String, dynamic>{
      'hits': instance.hits,
      'total': instance.total,
    };
