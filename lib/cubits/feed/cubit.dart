import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_test/cubits/feed/state.dart';
import 'package:video_test/repositories/feed_repository.dart';

class FeedCubit extends Cubit<FeedState> {
  final FeedRepository feedRepository;
  FeedCubit(this.feedRepository) : super(FeedStateInitial()) {
    init();
  }

  void init() async {
    emit(FeedsLoading());
    try {
      final feeds = await feedRepository.getFeeds();
      emit(FeedsLoaded(feeds: feeds));
    } catch (e) {
      debugPrint(e.toString());
      emit(FeedError());
    }
  }

  Future<void> refresh() async {
    emit(FeedsLoading(feeds: state.feeds));
    await Future.delayed(const Duration(seconds: 2));
    try {
      final feeds = await feedRepository.getFeeds();
      emit(FeedsLoaded(feeds: feeds));
    } catch (e) {
      debugPrint(e.toString());
      emit(FeedError(feeds: state.feeds));
    }
  }

  void updateFavourite(int index, bool isFavourite) async {
    emit(FeedsLoading(feeds: state.feeds));
    try {
      await feedRepository.updateFavourite(index, isFavourite);
      emit(FeedsLoaded(feeds: state.feeds ?? []));
    } catch (e) {
      emit(FeedError(feeds: state.feeds, message: "Failed to update favourites"));
    }
  }
}
