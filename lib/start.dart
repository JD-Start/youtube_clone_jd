import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:youtube_clone_jd/data.dart';
import 'package:youtube_clone_jd/pages/add_page.dart';
import 'package:youtube_clone_jd/pages/home_page.dart';
import 'package:youtube_clone_jd/pages/library_page.dart';
import 'package:youtube_clone_jd/pages/shorts_page.dart';
import 'package:youtube_clone_jd/pages/subsciption_page.dart';
import 'package:youtube_clone_jd/pages/video_page.dart';

final selectedVideoProvider = StateProvider<Video?>((ref) => null);
final selectedPageIndexProvider = StateProvider<int>((ref) => 0);
final miniPLayerControllerProvider =
    StateProvider.autoDispose<MiniplayerController>(
        (ref) => MiniplayerController());

class Start extends ConsumerWidget {
  Start({super.key});

  final double _playerMinheight = 60.0;

  final List _pagesList = [
    const Home_Page(),
    const Shorts_Page(),
    const AddVideo_Page(),
    const Subcscription_Page(),
    const Library_Page()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedVideo = ref.watch(selectedVideoProvider);
    final selectedIndex = ref.watch(selectedPageIndexProvider);
    final miniplayerConroller = ref.watch(miniPLayerControllerProvider);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue.shade500,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            ref.read(selectedPageIndexProvider.notifier).state = index;
          },
          currentIndex: selectedIndex,

          elevation: 12,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/resources/youtube_shorts.png',
                  height: 20,
                  color: ref.read(selectedPageIndexProvider.notifier).state == 1
                      ? Colors.blue.shade500
                      : Colors.white,
                ),
                label: 'Search'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 35,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/resources/youtube_subscription.png',
                  height: 20,
                  color: ref.read(selectedPageIndexProvider.notifier).state == 3
                      ? Colors.blue.shade500
                      : Colors.white,
                ),
                label: 'Subscription'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books_sharp,
                  size: 25,
                ),
                label: 'Library'),
          ],
          // type: BottomNavigationBarType.shifting,
        ),
        // backgroundColor: Colors.grey.shade300,
        backgroundColor: Colors.black,
        body: Stack(
          children: _pagesList
              .asMap()
              .map(
                (index, page) => MapEntry(
                  index,
                  Offstage(
                      offstage:
                          ref.read(selectedPageIndexProvider.notifier).state !=
                              index,
                      child: page),
                ),
              )
              .values
              .toList()
            ..add(Offstage(
              offstage: selectedVideo == null || selectedIndex != 0,
              child: Miniplayer(
                controller: miniplayerConroller,
                minHeight: _playerMinheight,
                maxHeight: MediaQuery.of(context).size.height,
                builder: (height, percentage) {
                  if (selectedVideo == null || selectedIndex != 0) {
                    return const SizedBox.shrink();
                  }
                  if (height <= _playerMinheight + 50.0) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                selectedVideo.thumbnailImgPath,
                                height: _playerMinheight - 2,
                                width: 120,
                                fit: BoxFit.cover,
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
                                        selectedVideo.title,
                                        maxLines: 1,
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
                                        selectedVideo.channelName,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.play_arrow_rounded,
                                    size: 24),
                              ),
                              IconButton(
                                onPressed: () {
                                  ref
                                      .read(selectedVideoProvider.notifier)
                                      .state = null;
                                },
                                icon: const Icon(Icons.close_rounded, size: 24),
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                            minHeight: 2,
                            value: 0.4,
                            color: Colors.red.shade500,
                          )
                        ],
                      ),
                    );
                  }
                  return const Video_Page();
                },
              ),
            )),
        ));
  }
}
