import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/data.dart';
import 'package:youtube_clone_jd/widgets/custom_sliver_appbar.dart';
import 'package:youtube_clone_jd/widgets/video_widget.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        const CustomSliverAppBar_Widget(),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            final video = videosDetailList[index];
            return Video_Widget(video: video);
          },
          childCount: videosDetailList.length,
        ))
      ]),
    );
  }
}
