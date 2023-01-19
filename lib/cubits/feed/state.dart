import 'package:video_test/models/feed.dart';

abstract class FeedState {
  final List<Feed>? feeds;
  FeedState(this.feeds);
}

class FeedStateInitial extends FeedState {
  FeedStateInitial() : super(null);
}

class FeedsLoading extends FeedState {
  FeedsLoading({List<Feed>? feeds}) : super(feeds);
}

class FeedsLoaded extends FeedState {
  FeedsLoaded({required List<Feed> feeds}) : super(feeds);
}

class FeedError extends FeedState {
  String? message;
  FeedError({List<Feed>? feeds, this.message}) : super(feeds);
}
