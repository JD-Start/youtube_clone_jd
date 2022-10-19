import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/data.dart';

import '../widgets/video_widget.dart';

class Suggestedvideos_Component extends StatelessWidget {
  const Suggestedvideos_Component({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) {
        final video = videosDetailList[index];
        return Video_Widget(video: video);
      },
      childCount: videosDetailList.length,
    ));
  }
}
