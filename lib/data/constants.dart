import 'package:video_test/models/feed.dart';

class Constants {
  static final feeds = <Feed>[
    Feed(
      title: "Audio 1",
      createdAt: DateTime.now().millisecondsSinceEpoch,
      description: "This is a test audio 1",
      url: 'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
      type: FeedType.audio,
    ),
    Feed(
      title: "Audio 2",
      createdAt: DateTime.now().millisecondsSinceEpoch,
      description: "This is a test audio 2",
      url: 'https://www2.cs.uic.edu/~i101/SoundFiles/CantinaBand60.wav',
      type: FeedType.audio,
    ),
    Feed(
      title: "Video 1",
      createdAt: DateTime.now().millisecondsSinceEpoch,
      description: "This is a test video 1",
      url: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      type: FeedType.video,
    ),
    Feed(
      title: "Audio 3",
      createdAt: DateTime.now().millisecondsSinceEpoch,
      description: "This is a test audio 3",
      url: 'https://www2.cs.uic.edu/~i101/SoundFiles/CantinaBand60.wav',
      type: FeedType.audio,
    ),
    Feed(
      title: "Video 2",
      createdAt: DateTime.now().millisecondsSinceEpoch,
      description: "This is a test video 2",
      url: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      type: FeedType.video,
    ),
    Feed(
      title: "Video 3",
      createdAt: DateTime.now().millisecondsSinceEpoch,
      description: "This is a test video 3",
      url: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      type: FeedType.video,
    ),
  ];
}
