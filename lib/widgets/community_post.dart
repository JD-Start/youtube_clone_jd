import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:youtube_clone_jd/widgets/custom_circle_avatar.dart';

class CommunityPost_Widget extends StatefulWidget {
  String channelName;
  String creatorImgPath;
  String? postImgPath;
  String? caption;
  String? likesCount;
  String? disLikesCount;
  String? commentsCount;
  String timePosted;

  CommunityPost_Widget(
      {required this.channelName,
      required this.timePosted,
      required this.creatorImgPath,
      this.caption,
      this.postImgPath = '',
      this.commentsCount = '0',
      this.likesCount = '0',
      this.disLikesCount = '0',
      super.key});
  @override
  State<CommunityPost_Widget> createState() => _CommunityPost_WidgetState();
}

class _CommunityPost_WidgetState extends State<CommunityPost_Widget> {
  final bool _isDarkMode = false;
  bool isLiked = false;
  bool isDisLiked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomCircleAvatar(creatorImgPath: widget.creatorImgPath),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.channelName,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          widget.timePosted,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.more_vert_rounded, size: 24)
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ReadMoreText(
                style: TextStyle(
                  fontSize: 16,
                  color: _isDarkMode ? Colors.white : Colors.black,
                ),
                widget.caption.toString(),
                // 'If you want to stay ahead of the stable cycle and test out the latest features before anyone else does, then you can run and install any variant of Figma. And do note that the beta, edge, and other variants are not as stable as the above one.',
                trimMode: TrimMode.Line,
                trimLines: 3,
                trimCollapsedText: 'Read more',
                trimExpandedText: 'Read less',
                colorClickableText: Colors.blue.shade500,
                moreStyle: TextStyle(
                  color: Colors.blue.shade700,
                  fontWeight: FontWeight.w700,
                ),
                lessStyle: TextStyle(
                  color: Colors.blue.shade700,
                  fontWeight: FontWeight.w700,
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          LimitedBox(
            maxHeight: 500,
            child: widget.postImgPath.toString() != ''
                ? Stack(
                    children: [
                      widget.postImgPath.toString() != ''
                          ? Image.asset(
                              widget.postImgPath.toString(),
                              fit: BoxFit.cover,
                            )
                          : const SizedBox.shrink(),
                      Positioned(
                        bottom: 0,
                        right: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(
                            Icons.photo_size_select_actual_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      )
                    ],
                  )
                : const SizedBox.shrink(),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                isLiked = !isLiked;
                                isDisLiked = false;
                              });
                            },
                            child: Icon(
                                isLiked
                                    ? Icons.thumb_up_alt
                                    : Icons.thumb_up_off_alt,
                                size: 24)),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.likesCount.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isDisLiked = !isDisLiked;
                          isLiked = false;
                        });
                      },
                      child: Icon(
                          isDisLiked
                              ? Icons.thumb_down
                              : Icons.thumb_down_off_alt,
                          size: 24),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.comment_outlined, size: 24),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.commentsCount.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
