import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/data.dart';
import 'package:youtube_clone_jd/widgets/story_preview_widget.dart';

class StoriesListView_Component extends StatefulWidget {
  Story story;
  StoriesListView_Component({required this.story, super.key});
  @override
  State<StoriesListView_Component> createState() =>
      _StoriesListView_ComponentState();
}

class _StoriesListView_ComponentState extends State<StoriesListView_Component> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: storyDetailList.length,
        itemBuilder: (context, index) {
          return StoryPreview_Widget(
            // creatorImgPath: storiesList[index]['creatorImgPath'],
            // storyVideoPath: storiesList[index]['storyVideoPath'],
            // channelName: storiesList[index]['channelName'],
            // isAllStoriesWatched: storiesList[index]['isAllStoriesWatched'],
            creatorImgPath: widget.story.creatorImgPath,
            storyVideoPath: widget.story.storyPath,
            channelName: widget.story.channelName,
            isAllStoriesWatched: widget.story.isAllStoriesWatched,
          );
        },
      ),
    );
  }
}
