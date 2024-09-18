// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkModelImpl _$$WorkModelImplFromJson(Map<String, dynamic> json) =>
    _$WorkModelImpl(
      projectName: json['projectName'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
      videoUrl: json['videoUrl'] as String?,
    );

Map<String, dynamic> _$$WorkModelImplToJson(_$WorkModelImpl instance) =>
    <String, dynamic>{
      'projectName': instance.projectName,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
    };
