import 'package:video_test/core/datastore/feed_datastore.dart';
import 'package:video_test/models/feed.dart';

class FeedRepository {
  final FeedDataStore _feedDataStore;

  FeedRepository(this._feedDataStore);

  Future<List<Feed>> getFeeds() async {
    return _feedDataStore.getFeeds();
  }

  Future<void> updateFavourite(int index, bool isFavourite) {
    return _feedDataStore.toogleFavourite(index, isFavourite);
  }
}
