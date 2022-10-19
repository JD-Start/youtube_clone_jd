import 'package:flutter/material.dart';

class CustomCircleAvatarSubscribed_Widget extends StatefulWidget {
  bool isDarkMode = false;
  bool hasUnwatchedStory = false;
  String creatorImgPath;
  CustomCircleAvatarSubscribed_Widget(
      {required this.creatorImgPath,
      required this.hasUnwatchedStory,
      super.key});
  @override
  State<CustomCircleAvatarSubscribed_Widget> createState() =>
      _CustomCircleAvatarSubscribed_WidgetState();
}

class _CustomCircleAvatarSubscribed_WidgetState
    extends State<CustomCircleAvatarSubscribed_Widget> {
//-----
//WIDGET: Unwatched Video ICon
//-----

  Widget _unwatchedVideoIcon() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: widget.isDarkMode ? Colors.black : Colors.white,
          shape: BoxShape.circle),
      child: const CircleAvatar(
        radius: 5,
        backgroundColor: Colors.blue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
            radius: 30, backgroundImage: AssetImage(widget.creatorImgPath)),
        Positioned(
            child: Positioned(
                top: 40,
                right: 2.5,
                child: widget.hasUnwatchedStory
                    ? _unwatchedVideoIcon()
                    : const SizedBox.shrink()))
      ],
    );
  }
}
