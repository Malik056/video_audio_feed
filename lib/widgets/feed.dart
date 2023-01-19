import 'package:flutter/material.dart';
import 'package:video_test/models/feed.dart';

class FeedWidget extends StatelessWidget {
  final Feed feed;
  final void Function(bool) onFavourite;

  const FeedWidget({super.key, required this.feed, required this.onFavourite});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          feed.title,
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(height: 10),
        if (feed.type == FeedType.audio) const SizedBox(),
        //TODO: AudioPalyer Insert
        if (feed.type == FeedType.video) const SizedBox(),
        //TOOD: VideoPlayer Insert
      ],
    );
  }
}
