class Video {
  String channelName;
  String videoTitle;
  String runTime;
  String numberOfViews;
  String timePosted;

  Video(
      {required this.channelName,
      required this.videoTitle,
      required this.timePosted,
      required this.runTime,
      required this.numberOfViews});
}

class Short {
  String likeCount;
  String commentCount;
  String caption;

  Short(
      {required this.caption,
      required this.likeCount,
      required this.commentCount});
}
