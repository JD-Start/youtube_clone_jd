import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/data.dart';

class PlayList_Widget extends StatefulWidget {
  const PlayList_Widget({super.key});
  @override
  State<PlayList_Widget> createState() => _PlayList_WidgetState();
}

class _PlayList_WidgetState extends State<PlayList_Widget> {
//-----
//WIDGET: Playlist
//-----

  Widget _playListWidget(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(
              pLaylistList[index]['playListImgPath'],
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pLaylistList[index]['playlistName'],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  pLaylistList[index]['isCreatedPlaylist'] == false
                      ? Text(
                          pLaylistList[index]['PlaylistChannelName'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      : const SizedBox.shrink(),
                  Text(
                    pLaylistList[index]['isCreatedPlaylist'] == false
                        ? ' - ${pLaylistList[index]['videoCount']} videos'
                        : '${pLaylistList[index]['videoCount']} videos',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: pLaylistList.length,
        itemBuilder: (context, index) {
          return _playListWidget(index);
        },
      ),
    );
  }
}
