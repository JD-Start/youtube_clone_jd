import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone_jd/pages/test_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Youtube UI',
        theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.blue,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: Colors.white)),
        debugShowCheckedModeBanner: false,
        home: Test_Page()

        // const CustomCircleAvatar(
        //   creatorImgPath: 'images/creators/fl0m.webp',
        //   // hasUnwatchedStory: true,
        //   // isDarkMode: true,
        //   // hasUnwatchedVideo: true,
        //   // isLive: true,
        // ),
        );
  }
}
