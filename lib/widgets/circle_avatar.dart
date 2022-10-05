import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatefulWidget {
  final bool isLive;
  final bool hasUnwatchedVideo;
  final bool isDarkMode;
  const CustomCircleAvatar(
      {this.hasUnwatchedVideo = false,
      this.isDarkMode = false,
      this.isLive = false,
      super.key});
  @override
  State<CustomCircleAvatar> createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: widget.isLive ? const EdgeInsets.all(3) : null,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: widget.isLive
                      ? Border.all(color: Colors.red, width: 2.5)
                      : null),
              child: CircleAvatar(
                  radius: widget.isLive ? 20 : 30,
                  backgroundImage:
                      const AssetImage('images/creators/warowl.webp')),
            ),
            //*: Live banner
            Positioned(
              // Change the position value accordinly
              bottom: -3,
              left: 8,

              child: widget.isLive
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 2,
                              color: widget.isDarkMode
                                  ? Colors.black
                                  : Colors.white)),
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
                    )
                  : const SizedBox.shrink(),
            ),
            //*: Unwacthed video icon
            Positioned(
                bottom: 3,
                right: 2.5,
                child: widget.hasUnwatchedVideo
                    ? Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color:
                                widget.isDarkMode ? Colors.black : Colors.white,
                            shape: BoxShape.circle),
                        child: const CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.blue,
                        ),
                      )
                    : const SizedBox.shrink())
          ],
        ),
      ],
    );
  }
}
