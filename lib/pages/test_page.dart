import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/start.dart';

class Test_Page extends StatefulWidget {
  final String creatorImgPath;
  bool isLive;
  bool hasUnwatchedVideo;
  bool isDarkMode;

  Test_Page(
      {this.isDarkMode = false,
      this.creatorImgPath = 'images/creators/default_creator_icon.webp',
      this.hasUnwatchedVideo = false,
      this.isLive = false,
      super.key});
  @override
  State<Test_Page> createState() => _Test_PageState();
}

class _Test_PageState extends State<Test_Page> {
  var currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (index) {
      //     setState(() {
      //       currentTabIndex = index;
      //     });
      //   },
      //   currentIndex: currentTabIndex,
      //   elevation: 12,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home_rounded,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.search,
      //         ),
      //         label: 'Search'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person,
      //         ),
      //         label: 'Profile')
      //   ],
      //   // type: BottomNavigationBarType.shifting,
      // ),
      backgroundColor: Colors.grey.shade300,
      // backgroundColor: Colors.white,
      body: SafeArea(child: Start()
          // Start(),
          // Home_Page()
          // VideosFromSubscriptions_Component()
          // Start(),
          // Short_Widget(
          //     channelName: 'Warowl',
          //     caption: 'I\'m warowl and still I have no closer',
          //     creatorImgPath: 'images/creators/warowl.webp',
          //     shortVideoPath: 'images/creators/fl0m.webp')),
          // SugegstedTopics_Component()
          // CustomCircleAvatarSubscribed_Widget(
          //     creatorImgPath: 'images/creators/warowl.webp',
          //     hasUnwatchedStory: true)
          // StoriesListView_Component()
          //      StoryPreview_Widget(
          //   creatorImgPath: 'images/creators/warowl.webp',
          //   storyVideoPath: 'images/creators/thegrefg.webp',
          //   channelName: 'Warowl',
          // )
          //         CommunityPost_Widget(
          //   caption: 'I\'m warowl and still I have no closure',
          //   channelName: 'Warowl',
          //   commentsCount: '213',
          //   disLikesCount: '45',
          //   likesCount: '1 K',
          //   postImgPath: 'images/creators/thegrefg.webp',
          //   timePosted: '3 hours ago',
          //   creatorImgPath: 'images/creators/warowl.webp',
          // )
          // LibraryPage()
          // PlayList()
          //     CustomCircleAvatar(
          //   hasUnwatchedVideo: widget.hasUnwatchedVideo,
          //   isDarkMode: widget.isDarkMode,
          //   isLive: widget.isLive,
          //   creatorImgPath: 'images/creators/warowl.webp',
          // ),
          ),
    );
  }
}
