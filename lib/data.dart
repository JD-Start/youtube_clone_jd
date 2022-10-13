int likedVideoConnt = 432;
int unwacthedVideosCount = 113;
int downloadedVideosCount = 8;

bool isDarkMode = false;

class Video {
  String channelName;
  String videoTitle;
  String runTime;
  String numberOfViews;
  String timePosted;
  String thumbnailImgPath;
  String likeCount;
  String disLikeCount;

  Video({
    required this.channelName,
    required this.videoTitle,
    required this.timePosted,
    required this.runTime,
    required this.disLikeCount,
    required this.likeCount,
    required this.thumbnailImgPath,
    required this.numberOfViews,
  });
}

class Short {
  String channelName;
  String likeCount;
  String disLikeCount;
  String commentCount;
  String caption;
  bool isSubscribed;

  Short(
      {required this.caption,
      required this.likeCount,
      required this.channelName,
      required this.disLikeCount,
      this.isSubscribed = false,
      required this.commentCount});
}

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
    'PlaylistChannelName': ''
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

List storiesList = [
  {
    'channelName': 'Shroud',
    'storyVideoPath': 'images/creators/tfue.webp',
    'creatorImgPath': 'images/creators/shroud.webp',
    'isAllStoriesWatched': false,
  },
  {
    'channelName': 'Rubius',
    'storyVideoPath': 'images/creators/warowl.webp',
    'creatorImgPath': 'images/creators/Rubius.webp',
    'isAllStoriesWatched': true,
  },
  {
    'channelName': 'Ninja',
    'storyVideoPath': 'images/creators/AuronPlay.webp',
    'creatorImgPath': 'images/creators/Ninja.webp',
    'isAllStoriesWatched': false,
  },
  {
    'channelName': 'xqc-overwatch',
    'storyVideoPath': 'images/creators/nadeking.jpg',
    'creatorImgPath': 'images/creators/xqc-overwatch.webp',
    'isAllStoriesWatched': false,
  },
  {
    'channelName': 'pokimane',
    'storyVideoPath': 'images/creators/fl0m.webp',
    'creatorImgPath': 'images/creators/pokimane.webp',
    'isAllStoriesWatched': true,
  },
  {
    'channelName': 'Rubius',
    'storyVideoPath': 'images/creators/Ibai.webp',
    'creatorImgPath': 'images/creators/Rubius.webp',
    'isAllStoriesWatched': false,
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

List shortsList = [
  {
    'channelName': 'NadeKing',
    'shortVideoPath': 'images/creators/fl0m.webp',
    'creatorImgPath': 'images/creators/nadeking.jpg',
    'caption': 'So simple',
    'likeCount': '1.3 K',
    'commentCount': '342',
    'isSubscribed': true,
  },
  {
    'channelName': 'Ibai',
    'shortVideoPath': 'images/creators/Sodapoppin.webp',
    'creatorImgPath': 'images/creators/Ibai.webp',
    'caption': 'Lets go',
    'likeCount': '2.2 K',
    'commentCount': '642',
    'isSubscribed': false,
  },
  {
    'channelName': 'Ninja',
    'shortVideoPath': 'images/creators/fl0m.webp',
    'creatorImgPath': 'images/creators/Ninja.webp',
    'caption': 'Sneeky peaky',
    'likeCount': ' 3.1 k',
    'commentCount': '796',
    'isSubscribed': false,
  },
  {
    'channelName': 'Pokimane',
    'shortVideoPath': 'images/creators/shroud.webp',
    'creatorImgPath': 'images/creators/pokimane.webp',
    'caption': 'Where are you my Pokimon?',
    'likeCount': '4.4 k',
    'commentCount': '1.2 k',
    'isSubscribed': false,
  },
  {
    'channelName': 'Warowl',
    'shortVideoPath': 'images/creators/thegrefg.webp',
    'creatorImgPath': 'images/creators/warowl.webp',
    'caption': 'I\'m warowl and still I have no closer.',
    'likeCount': '1.3 K',
    'commentCount': '342',
    'isSubscribed': true,
  },
  {
    'channelName': 'Fl0m',
    'shortVideoPath': 'images/creators/xqc-overwatch.webp',
    'creatorImgPath': 'images/creators/fl0m.webp',
    'caption': 'So what do you think who will win this major?',
    'likeCount': '8.9 K',
    'commentCount': '3.8 k',
    'isSubscribed': true,
  },
  {
    'channelName': 'AuronPlay',
    'shortVideoPath': 'images/creators/tfue.webp',
    'creatorImgPath': 'images/creators/AuronPlay.webp',
    'caption': 'Have you tasted new drink?',
    'likeCount': '968',
    'commentCount': '137',
    'isSubscribed': false,
  },
  {
    'channelName': 'thegrefg',
    'shortVideoPath': 'images/creators/pokimane.webp',
    'creatorImgPath': 'images/creators/thegrefg.webp',
    'caption': 'What should I write today?',
    'likeCount': '79 ',
    'commentCount': '6',
    'isSubscribed': false,
  },
];
