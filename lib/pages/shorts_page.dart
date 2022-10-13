import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/data.dart';
import 'package:youtube_clone_jd/widgets/short.dart';

class Shorts_Page extends StatefulWidget {
  const Shorts_Page({super.key});
  @override
  State<Shorts_Page> createState() => _Shorts_PageState();
}

class _Shorts_PageState extends State<Shorts_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: shortsList.length,
      itemBuilder: (context, index) {
        return Short_Widget(
          channelName: shortsList[index]['channelName'],
          creatorImgPath: shortsList[index]['creatorImgPath'],
          shortVideoPath: shortsList[index]['shortVideoPath'],
          caption: shortsList[index]['caption'],
          commentCount: shortsList[index]['commentCount'],
          isSubscribed: shortsList[index]['isSubscribed'],
          likeCount: shortsList[index]['likeCount'],
        );
      },
    ));
  }
}
