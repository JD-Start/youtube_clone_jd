import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});
  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  var currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue.shade500,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        currentIndex: currentTabIndex,
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
                color:
                    currentTabIndex == 1 ? Colors.blue.shade500 : Colors.black,
              ),
              label: 'Search'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                size: 30,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.view_list_rounded,
                size: 25,
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
      backgroundColor: Colors.grey.shade300,
      // backgroundColor: Colors.white,
      body: const SafeArea(
        child: Text('data'),
      ),
    );
  }
}
