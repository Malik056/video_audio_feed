import 'package:video_test/core/datastore/feed_datastore.dart';
import 'package:video_test/data/constants.dart';
import 'package:video_test/models/feed.dart';

class LocalFeedDataStore extends FeedDataStore {
  List<Feed>? _feeds;
  @override
  Future<List<Feed>> getFeeds() async {
    _feeds = List.from(Constants.feeds);
    return _feeds!;
  }

  Future<void> toogleFavourite(int index, bool isFavourite) async {
    _feeds![index] = _feeds![index].copyWith(isFavourite: isFavourite);
  }
}
