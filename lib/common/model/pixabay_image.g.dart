// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PixabayImageImpl _$$PixabayImageImplFromJson(Map<String, dynamic> json) =>
    _$PixabayImageImpl(
      title: json['title'] as String?,
      id: (json['id'] as num).toInt(),
      previewURL: json['previewURL'] as String?,
      webformatURL: json['webformatURL'] as String?,
      largeImageURL: json['largeImageURL'] as String?,
    );

Map<String, dynamic> _$$PixabayImageImplToJson(_$PixabayImageImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'previewURL': instance.previewURL,
      'webformatURL': instance.webformatURL,
      'largeImageURL': instance.largeImageURL,
    };
