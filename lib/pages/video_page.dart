import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:youtube_clone_jd/components/suggested_videos_component.dart';
import 'package:youtube_clone_jd/data.dart';

import '../widgets/video_detail_widget.dart';

class Video_Page extends ConsumerWidget {
  const Video_Page({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedVideo = ref.watch(selectedVideoProvider);
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: Consumer(
                builder: (context, ref, child) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset(selectedVideo!.thumbnailImgPath)),
                          Positioned(
                            top: 5,
                            left: 5,
                            child: IconButton(
                              onPressed: () {
                                ref
                                    .read(miniPLayerControllerProvider.notifier)
                                    .state
                                    .animateToHeight(
                                        state: PanelState.MIN,
                                        duration:
                                            const Duration(milliseconds: 200));
                              },
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 30),
                            ),
                          )
                        ],
                      ),
                      LinearProgressIndicator(
                        minHeight: 3,
                        value: 0.4,
                        color: Colors.red.shade500,
                      ),
                      SizedBox(height: 320, child: VideoDetaile_Widget()),
                    ],
                  );
                },
              ),
            ),
            const Suggestedvideos_Component()
          ],
        ),
      ),
    );
  }
}
