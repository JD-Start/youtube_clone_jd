import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/data.dart';

import '../widgets/playlist.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});
  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: const [
              Icon(Icons.history, size: 24),
              SizedBox(
                width: 10,
              ),
              Text(
                'History',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.video_collection_outlined, size: 24),
              SizedBox(
                width: 10,
              ),
              Text(
                'Your Videos',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.download_for_offline_outlined, size: 24),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Download',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '$downloadedVideosCount Video',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.local_movies_outlined, size: 24),
              SizedBox(
                width: 10,
              ),
              Text(
                'Your Movies',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Playlsits',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'Recently added',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded, size: 24)
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.add, size: 24, color: Colors.blue.shade500),
              const SizedBox(
                width: 10,
              ),
              Text(
                'New Playlist',
                style: TextStyle(fontSize: 16, color: Colors.blue.shade500),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.watch_later_outlined,
                size: 24,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Watch Later',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '$unwacthedVideosCount unwatched videos',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.thumb_up_alt_outlined,
                size: 24,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Liked Videos',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '$likedVideoConnt videos',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 400, child: PlayList_Widget())
        ],
      ),
    );
  }
}
