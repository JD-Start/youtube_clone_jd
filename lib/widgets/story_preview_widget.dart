import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/widgets/custom_circle_avatar_widget.dart';

class StoryPreview_Widget extends StatefulWidget {
  bool isAllStoriesWatched;
  String channelName;
  String creatorImgPath;
  String storyVideoPath;

  StoryPreview_Widget(
      {required this.creatorImgPath,
      required this.storyVideoPath,
      required this.channelName,
      this.isAllStoriesWatched = false,
      super.key});
  @override
  State<StoryPreview_Widget> createState() => StoryPreview_WidgetState();
}

class StoryPreview_WidgetState extends State<StoryPreview_Widget> {
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 230,
      maxWidth: 130,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.storyVideoPath,
                height: 230,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 150,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomCircleAvatar_Widget(
                    creatorImgPath: widget.creatorImgPath,
                    hasUnwatchedStory: !widget.isAllStoriesWatched,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    widget.channelName,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
            const Positioned(
                top: 2,
                right: 5,
                child: Icon(
                  Icons.more_vert_rounded,
                  size: 20,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
