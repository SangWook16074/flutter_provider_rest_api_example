// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      post: json['post'] as String,
      userId: (json['userId'] as num).toInt(),
      isPublic: json['isPublic'] as bool,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'post': instance.post,
      'userId': instance.userId,
      'isPublic': instance.isPublic,
    };
