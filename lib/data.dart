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
