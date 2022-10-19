import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';

final selectedVideoProvider = StateProvider<Video?>((ref) => null);
final selectedPageIndexProvider = StateProvider<int>((ref) => 0);
final miniPLayerControllerProvider =
    StateProvider.autoDispose<MiniplayerController>(
        (ref) => MiniplayerController());

int likedVideoConnt = 432;
int unwacthedVideosCount = 113;
int downloadedVideosCount = 8;

bool isDarkMode = false;

class Video {
  String videoID;
  String channelName;
  String title;
  String runTime;
  String numberOfViews;
  DateTime timePosted;
  String thumbnailImgPath;
  String likeCount;
  String disLikeCount;
  String commentCount;
  String creatorImgPath;

  Video({
    required this.videoID,
    required this.channelName,
    required this.title,
    required this.timePosted,
    required this.runTime,
    required this.thumbnailImgPath,
    required this.creatorImgPath,
    this.disLikeCount = '0',
    this.likeCount = '0',
    this.commentCount = '0',
    this.numberOfViews = '0',
  });
}

class ShortVideo {
  String shortID;
  String creatorImgPath;
  String shortVideoPath;
  String channelName;
  String likeCount;
  String disLikeCount;
  String commentCount;
  String caption;
  bool isSubscribed;

  ShortVideo({
    required this.shortID,
    required this.shortVideoPath,
    required this.creatorImgPath,
    required this.caption,
    required this.channelName,
    required this.likeCount,
    required this.disLikeCount,
    required this.commentCount,
    this.isSubscribed = false,
  });
}

class Story {
  String storyId;
  String channelName;
  String storyPath;
  String creatorImgPath;
  bool isAllStoriesWatched;

  Story({
    required this.storyId,
    required this.channelName,
    required this.storyPath,
    required this.isAllStoriesWatched,
    required this.creatorImgPath,
  });
}

class Creator {
  String creatorId;
  String creatorImgPath;
  String channelName;
  String subscriberCount;
  bool isLive;
  bool hasUnwatchedVideo;

  Creator({
    required this.creatorId,
    required this.channelName,
    required this.isLive,
    required this.subscriberCount,
    required this.hasUnwatchedVideo,
    required this.creatorImgPath,
  });
}

List<Video> videosDetailList = [
  Video(
      videoID: 'v1',
      channelName: 'Warowl',
      title: 'I have no closer',
      timePosted: DateTime(2019, 3, 24),
      runTime: '13:07',
      disLikeCount: '1.3 k',
      likeCount: '24 k',
      commentCount: '2.6 k',
      thumbnailImgPath: 'images/creators/warowl.webp',
      creatorImgPath: 'images/creators/warowl.webp',
      numberOfViews: '1.3 M'),
  Video(
      videoID: 'v2',
      channelName: 'pokimane',
      title: 'No pokemon ever done this',
      timePosted: DateTime(2022, 2, 18),
      runTime: '9:34',
      disLikeCount: '3.3 k',
      likeCount: '29 k',
      commentCount: '2.4 k',
      thumbnailImgPath: 'images/creators/pokimane.webp',
      creatorImgPath: 'images/creators/pokimane.webp',
      numberOfViews: '3.3 M'),
  Video(
      videoID: 'v3',
      channelName: 'xqc-overwatch',
      title: 'No one does it better',
      timePosted: DateTime(2021, 5, 16),
      runTime: '11:14',
      disLikeCount: '2.1 k',
      likeCount: '13 k',
      commentCount: '1.1 k',
      thumbnailImgPath: 'images/creators/xqc-overwatch.webp',
      creatorImgPath: 'images/creators/xqc-overwatch.webp',
      numberOfViews: '1.9 M'),
  Video(
      videoID: 'v4',
      channelName: 'fl0m',
      title: 'Let\'s open some cases today',
      timePosted: DateTime(2021, 8, 14),
      runTime: '4:26',
      disLikeCount: '465',
      likeCount: '3.9 k',
      commentCount: '651',
      thumbnailImgPath: 'images/creators/fl0m.webp',
      creatorImgPath: 'images/creators/fl0m.webp',
      numberOfViews: '786 k'),
  Video(
      videoID: 'v5',
      channelName: 'Ibai',
      title: 'Do you have any idea how I won this?',
      timePosted: DateTime(2021, 4, 12),
      runTime: '8:36',
      disLikeCount: '534',
      likeCount: '3 k',
      commentCount: '1.2 k',
      thumbnailImgPath: 'images/creators/Ibai.webp',
      creatorImgPath: 'images/creators/Ibai.webp',
      numberOfViews: '536 k'),
  Video(
      videoID: 'v6',
      channelName: 'nadeking',
      title: 'When pro fails',
      timePosted: DateTime(2022, 5, 21),
      runTime: '6:34',
      disLikeCount: '987',
      likeCount: '18 k',
      commentCount: '3.2 k',
      thumbnailImgPath: 'images/creators/nadeking.jpg',
      creatorImgPath: 'images/creators/nadeking.jpg',
      numberOfViews: '1.4 M'),
  Video(
      videoID: 'v7',
      channelName: 'Ninja',
      title: 'Let\'s do something crazy',
      timePosted: DateTime(2020, 6, 13),
      runTime: '6:12',
      disLikeCount: '1.2 k',
      likeCount: '12 k',
      commentCount: '2.1 k',
      thumbnailImgPath: 'images/creators/Ninja.webp',
      creatorImgPath: 'images/creators/Ninja.webp',
      numberOfViews: '395 k'),
  Video(
      videoID: 'v8',
      channelName: 'Shroud',
      title:
          'So what you guys think of this new skin? -- context.read does not work with hooks_riverpod 1.0.2 #1010',
      timePosted: DateTime(2021, 8, 3),
      runTime: '4:45',
      disLikeCount: '3.3 k',
      likeCount: '24 k',
      commentCount: '4.2 k',
      thumbnailImgPath: 'images/creators/shroud.webp',
      creatorImgPath: 'images/creators/shroud.webp',
      numberOfViews: '2.8 M'),
];

List<Story> storyDetailList = [
  Story(
      storyId: 's1',
      channelName: 'Shroud',
      isAllStoriesWatched: false,
      storyPath: 'images/creators/shroud.webp',
      creatorImgPath: 'images/creators/shroud.webp'),
  Story(
      storyId: 's2',
      channelName: 'Rubius',
      isAllStoriesWatched: true,
      storyPath: 'images/creators/Rubius.webp',
      creatorImgPath: 'images/creators/Rubius.webp'),
  Story(
      storyId: 's3',
      channelName: 'Ninja',
      isAllStoriesWatched: false,
      storyPath: 'images/creators/Ninja.webp',
      creatorImgPath: 'images/creators/Ninja.webp'),
  Story(
      storyId: 's4',
      channelName: 'xqc-overwatch',
      isAllStoriesWatched: false,
      storyPath: 'images/creators/xqc-overwatch.webp',
      creatorImgPath: 'images/creators/xqc-overwatch.webp'),
  Story(
      storyId: 's5',
      channelName: 'pokimane',
      isAllStoriesWatched: false,
      storyPath: 'images/creators/pokimane.webp',
      creatorImgPath: 'images/creators/pokimane.webp'),
  Story(
      storyId: 's6',
      channelName: 'Rubius',
      isAllStoriesWatched: false,
      storyPath: 'images/creators/Rubius.webp',
      creatorImgPath: 'images/creators/Rubius.webp'),
];

List<ShortVideo> shortVideoDetailsList = [
  ShortVideo(
    shortID: 'sv1',
    channelName: 'NadeKing',
    caption: 'So simple',
    likeCount: '1.3 K',
    disLikeCount: '283',
    commentCount: '342',
    shortVideoPath: 'images/creators/nadeking.jpg',
    creatorImgPath: 'images/creators/nadeking.jpg',
    isSubscribed: true,
  ),
  ShortVideo(
    shortID: 'sv2',
    channelName: 'Ibai',
    caption: 'Lets go',
    likeCount: '2.2 K',
    disLikeCount: '354',
    commentCount: '642',
    shortVideoPath: 'images/creators/Ibai.webp',
    creatorImgPath: 'images/creators/Ibai.webp',
    isSubscribed: false,
  ),
  ShortVideo(
    shortID: 'sv3',
    channelName: 'Ninja',
    caption: 'Sneeky peaky',
    likeCount: '3.1 k',
    disLikeCount: '439',
    commentCount: '796',
    shortVideoPath: 'images/creators/Ninja.webp',
    creatorImgPath: 'images/creators/Ninja.webp',
    isSubscribed: false,
  ),
  ShortVideo(
    shortID: 'sv4',
    channelName: 'Pokimane',
    caption: 'Where are you my Pokimon?',
    likeCount: '4.4 k',
    disLikeCount: '619',
    commentCount: '1.2 k',
    shortVideoPath: 'images/creators/pokimane.webp',
    creatorImgPath: 'images/creators/pokimane.webp',
    isSubscribed: false,
  ),
  ShortVideo(
    shortID: 'sv5',
    channelName: 'Warowl',
    caption: 'I\'m warowl and still I have no closer.',
    likeCount: '1.3 K',
    disLikeCount: '167',
    commentCount: '349',
    shortVideoPath: 'images/creators/warowl.webp',
    creatorImgPath: 'images/creators/warowl.webp',
    isSubscribed: true,
  ),
  ShortVideo(
    shortID: 'sv6',
    channelName: 'Fl0m',
    caption: 'So what do you think who will win this major?',
    likeCount: '8.9 K',
    disLikeCount: '537',
    commentCount: '3.8 k',
    shortVideoPath: 'images/creators/fl0m.webp',
    creatorImgPath: 'images/creators/fl0m.webp',
    isSubscribed: true,
  ),
  ShortVideo(
    shortID: 'sv7',
    channelName: 'AuronPlay',
    caption: 'Have you teasted new drink?',
    likeCount: '968',
    disLikeCount: '39',
    commentCount: '137',
    shortVideoPath: 'images/creators/AuronPlay.webp',
    creatorImgPath: 'images/creators/AuronPlay.webp',
    isSubscribed: false,
  ),
  ShortVideo(
    shortID: 'sv8',
    channelName: 'thegrefg',
    caption: 'What should I write today?',
    likeCount: '79',
    disLikeCount: '2',
    commentCount: '6',
    shortVideoPath: 'images/creators/thegrefg.webp',
    creatorImgPath: 'images/creators/thegrefg.webp',
    isSubscribed: false,
  ),
];

List<Creator> creatorDetailsList = [];

List pLaylistList = [
  {
    'playlistName': 'Decoding Flutter',
    'playListImgPath': 'images/creators/warowl.webp',
    'videoCount': 24,
    'isCreatedPlaylist': false,
    'PlaylistChannelName': 'Flutter'
  },
  {
    'playlistName': 'General know how',
    'playListImgPath': 'images/creators/fl0m.webp',
    'videoCount': 35,
    'isCreatedPlaylist': true,
    'PlaylistChannelName': 'v'
  },
  {
    'playlistName': 'Science',
    'playListImgPath': 'images/creators/AuronPlay.webp',
    'videoCount': 22,
    'isCreatedPlaylist': true,
    'PlaylistChannelName': ''
  },
  {
    'playlistName': 'Flutter Focus',
    'playListImgPath': 'images/creators/Ibai.webp',
    'videoCount': 24,
    'isCreatedPlaylist': false,
    'PlaylistChannelName': 'Flutter'
  },
  {
    'playlistName': 'Inspirational',
    'playListImgPath': 'images/creators/Ninja.webp',
    'videoCount': 7,
    'isCreatedPlaylist': true,
    'PlaylistChannelName': ''
  },
  {
    'playlistName': 'Podacasts/Speeches',
    'playListImgPath': 'images/creators/pokimane.webp',
    'videoCount': 48,
    'isCreatedPlaylist': true,
    'PlaylistChannelName': ''
  },
  {
    'playlistName': 'Economic & Business',
    'playListImgPath': 'images/creators/shroud.webp',
    'videoCount': 17,
    'isCreatedPlaylist': true,
    'PlaylistChannelName': ''
  },
  {
    'playlistName': 'Tutorials',
    'playListImgPath': 'images/creators/tfue.webp',
    'videoCount': 31,
    'isCreatedPlaylist': true,
    'PlaylistChannelName': ''
  },
];

List unwatchedVideosFromSubscriptionList = [
  {
    'creatorImgPath': 'images/creators/AuronPlay.webp',
    'hasUnwatchedStory': true
  },
  {'creatorImgPath': 'images/creators/Ibai.webp', 'hasUnwatchedStory': false},
  {'creatorImgPath': 'images/creators/fl0m.webp', 'hasUnwatchedStory': true},
  {'creatorImgPath': 'images/creators/nadeking.jpg', 'hasUnwatchedStory': true},
  {'creatorImgPath': 'images/creators/Ninja.webp', 'hasUnwatchedStory': false},
  {
    'creatorImgPath': 'images/creators/pokimane.webp',
    'hasUnwatchedStory': true
  },
  {'creatorImgPath': 'images/creators/Rubius.webp', 'hasUnwatchedStory': true},
  {'creatorImgPath': 'images/creators/shroud.webp', 'hasUnwatchedStory': true},
  {
    'creatorImgPath': 'images/creators/Sodapoppin.webp',
    'hasUnwatchedStory': true
  },
  {'creatorImgPath': 'images/creators/tfue.webp', 'hasUnwatchedStory': false},
  {
    'creatorImgPath': 'images/creators/thegrefg.webp',
    'hasUnwatchedStory': true
  },
  {'creatorImgPath': 'images/creators/warowl.webp', 'hasUnwatchedStory': false},
  {
    'creatorImgPath': 'images/creators/xqc-overwatch.webp',
    'hasUnwatchedStory': true
  },
];

List sugegstedTopicList = [
  'Live',
  'Mixes',
  'Music',
  'csgo',
  'Physics',
  'Mantras',
  'Comedy',
  'Yoga',
  'Recently uploaded',
  'New to you',
];

List subscribedChannelsList = [
  {'channelName': 'Warowl', 'subscriberCount': '1.3 M'},
  {'channelName': 'nadeking', 'subscriberCount': '2.7 M'},
  {'channelName': 'Ninja', 'subscriberCount': '698 k'},
  {'channelName': 'Shroud', 'subscriberCount': '143 k'},
  {'channelName': 'fl0m', 'subscriberCount': '1.3 M'},
];
