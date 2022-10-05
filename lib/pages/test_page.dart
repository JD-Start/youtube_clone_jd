import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/widgets/circle_avatar.dart';

class TestPage extends StatefulWidget {
  bool isLive;
  bool hasUnwatchedVideo;
  bool isDarkMode;

  TestPage(
      {this.isDarkMode = false,
      this.hasUnwatchedVideo = false,
      this.isLive = false,
      super.key});
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: CustomCircleAvatar(
          hasUnwatchedVideo: widget.hasUnwatchedVideo,
          isDarkMode: widget.isDarkMode,
          isLive: widget.isLive,
        )));
  }
}



// color: widget.isDarkMode
//                                           ? Colors.black
//                                           : Colors.white