import 'package:flutter/material.dart';
import 'package:youtube_clone_jd/pages/test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: TestPage(
        hasUnwatchedVideo: true,
        // isLive: true,
        isDarkMode: true,
      ),
    );
  }
}
