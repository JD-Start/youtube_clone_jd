import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatefulWidget {
  final String creatorImgPath;
  final bool isLive;
  final bool hasUnwatchedVideo;
  final bool hasUnwatchedStory;
  final bool isDarkMode;
  const CustomCircleAvatar(
      {this.creatorImgPath = 'images/creators/default.webp',
      this.hasUnwatchedStory = false,
      this.hasUnwatchedVideo = false,
      this.isDarkMode = false,
      this.isLive = false,
      super.key});
  @override
  State<CustomCircleAvatar> createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
//-----
//WIDGET: Live banner
//-----

  Widget _liveBanner() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 2,
              color: widget.isDarkMode ? Colors.black : Colors.white)),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 3,
        ),
        decoration: BoxDecoration(
          color: Colors.red.shade600,
        ),
        child: const Center(
          child: Text(
            'Live',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.creatorImgPath);
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: widget.isLive || widget.hasUnwatchedStory
                          ? Colors.red
                          : Colors.grey.shade400,
                      width: 2.5)),
              child: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage(widget.creatorImgPath.toString())),
            ),
            //*: Live banner
            Positioned(
              bottom: -3,
              left: 8,
              child: widget.isLive & !widget.hasUnwatchedStory
                  ? _liveBanner()
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ],
    );
  }
}
