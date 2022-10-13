import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/data.dart';

class SugegstedTopics_Component extends StatefulWidget {
  const SugegstedTopics_Component({super.key});
  @override
  State<SugegstedTopics_Component> createState() =>
      SsugegstedTopics_ComponentState();
}

class SsugegstedTopics_ComponentState extends State<SugegstedTopics_Component> {
  // int globalindex=0;
  //-----
  //WIDGET: Custom chip
  //-----
  Widget _customChip(index) {
    return Chip(
      side: const BorderSide(color: Colors.black, width: 0.1),
      backgroundColor: Colors.grey.shade900.withOpacity(0.07),
      label: Text(
        sugegstedTopicList[index],
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

//-----
//WIDGET: Explore
//-----

  Widget _explore() {
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black.withOpacity(0.1),
      ),
      child: Row(
        children: const [
          Icon(Icons.explore, size: 24),
          SizedBox(
            width: 3,
          ),
          Text(
            'Explore',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

//-----
//WIDGET: All
//-----

  Widget _all() {
    return Container(
      padding: const EdgeInsets.all(3),
      height: 30,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.grey.shade100,
      ),
      child: const Center(
          child: Text(
        'All',
        style: TextStyle(fontSize: 16),
      )),
    );
  }

  final List _itemlist = [
    //*: Explore widget
    Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black.withOpacity(0.1),
      ),
      child: Row(
        children: const [
          Icon(Icons.explore, size: 24),
          SizedBox(
            width: 3,
          ),
          Text(
            'Explore',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    ),

    //*: all widegt
    Container(
      padding: const EdgeInsets.all(3),
      height: 30,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.grey.shade600.withOpacity(0.8),
      ),
      child: const Center(
          child: Text(
        'All',
        style: TextStyle(fontSize: 16, color: Colors.white),
      )),
    ),

    //*: ListView that builds chips
    Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Chip(
              side: const BorderSide(color: Colors.black, width: 0.1),
              backgroundColor: Colors.grey.shade900.withOpacity(0.07),
              label: Text(
                sugegstedTopicList[index],
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
          itemCount: sugegstedTopicList.length),
    ),
    const SizedBox(
      width: 4,
    ),
    Center(
      child: Text(
        'SEND FEEDBACK',
        style: TextStyle(
          fontSize: 14,
          color: Colors.blue.shade500,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    const SizedBox(
      width: 4,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _itemlist[index];
              },
              separatorBuilder: (context, index) => const SizedBox(
                    width: 4,
                  ),
              itemCount: _itemlist.length),
        ),
      ),
    );
  }
}
