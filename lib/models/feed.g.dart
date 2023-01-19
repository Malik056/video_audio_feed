// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feed _$$_FeedFromJson(Map<String, dynamic> json) => _$_Feed(
      url: json['url'] as String,
      type: $enumDecode(_$FeedTypeEnumMap, json['type']),
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: json['createdAt'] as int,
      isFavourite: json['isFavourite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_FeedToJson(_$_Feed instance) => <String, dynamic>{
      'url': instance.url,
      'type': _$FeedTypeEnumMap[instance.type]!,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'isFavourite': instance.isFavourite,
    };

const _$FeedTypeEnumMap = {
  FeedType.audio: 'audio',
  FeedType.video: 'video',
};
