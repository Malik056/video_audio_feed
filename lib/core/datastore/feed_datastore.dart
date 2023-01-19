import 'package:video_test/models/feed.dart';

abstract class FeedDataStore {
  Future<List<Feed>> getFeeds();
  Future<void> toogleFavourite(int index, bool isFavourite);
}
