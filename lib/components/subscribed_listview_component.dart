import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/data.dart';
import 'package:youtube_clone_jd/widgets/custom_cirlce_avatar_subscribed_widget.dart';

class VideosFromSubscriptions_Component extends StatefulWidget {
  const VideosFromSubscriptions_Component({super.key});
  @override
  State<VideosFromSubscriptions_Component> createState() =>
      _VideosFromSubscriptions_ComponentState();
}

class _VideosFromSubscriptions_ComponentState
    extends State<VideosFromSubscriptions_Component> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CustomCircleAvatarSubscribed_Widget(
                  creatorImgPath: unwatchedVideosFromSubscriptionList[index]
                      ['creatorImgPath'],
                  hasUnwatchedStory: unwatchedVideosFromSubscriptionList[index]
                      ['hasUnwatchedStory']);
            },
            separatorBuilder: (context, index) => const SizedBox(
                  width: 5,
                ),
            itemCount: unwatchedVideosFromSubscriptionList.length));
  }
}
