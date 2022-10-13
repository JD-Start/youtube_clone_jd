import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/data.dart';
import 'package:youtube_clone_jd/widgets/story_preview.dart';

class StoriesListView_Component extends StatefulWidget {
  const StoriesListView_Component({super.key});
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
        itemCount: storiesList.length,
        itemBuilder: (context, index) {
          return StoryPreview_Widget(
            creatorImgPath: storiesList[index]['creatorImgPath'],
            storyVideoPath: storiesList[index]['storyVideoPath'],
            channelName: storiesList[index]['channelName'],
            isAllStoriesWatched: storiesList[index]['isAllStoriesWatched'],
          );
        },
      ),
    );
  }
}
