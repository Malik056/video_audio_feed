import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

enum FeedType { audio, video }

@freezed
class Feed with _$Feed {
  const factory Feed({
    required String url,
    required FeedType type,
    required String title,
    required String description,
    required int createdAt,
    @Default(false) bool isFavourite,
  }) = _Feed;
  factory Feed.fromJson(Map<String, Object?> json) => _$FeedFromJson(json);
}
