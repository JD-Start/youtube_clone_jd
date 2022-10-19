import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:youtube_clone_jd/widgets/custom_circle_avatar_widget.dart';
import '../data.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Video_Widget extends ConsumerWidget {
  Video video;
  Video_Widget({required this.video, super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedVideo = ref.watch(selectedVideoProvider);
    print(selectedVideo);
    return GestureDetector(
      onTap: () {
        ref.read(selectedVideoProvider.notifier).state = video;
        ref.read(miniPLayerControllerProvider.notifier).state.animateToHeight(
            state: PanelState.MAX, duration: const Duration(milliseconds: 200));
      },
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                video.thumbnailImgPath,
                height: 230,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 3,
                right: 5,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  color: Colors.black54,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    video.runTime,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCircleAvatar_Widget(
                  creatorImgPath: video.creatorImgPath,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          video.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //*: channel name, views and timeago
                      Flexible(
                        child: Text(
                          '${video.channelName} · ${video.numberOfViews} views  ·  ${timeago.format(video.timePosted)}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {}, child: const Icon(Icons.more_vert, size: 20))
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
