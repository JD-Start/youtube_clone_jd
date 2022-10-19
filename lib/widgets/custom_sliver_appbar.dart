import 'package:flutter/material.dart';

class CustomSliverAppBar_Widget extends StatefulWidget {
  const CustomSliverAppBar_Widget({super.key});
  @override
  State<CustomSliverAppBar_Widget> createState() =>
      _CustomSliverAppBar_WidgetState();
}

class _CustomSliverAppBar_WidgetState extends State<CustomSliverAppBar_Widget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Image.asset('images/resources/yt_logo_dark.png'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast, size: 24),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications, size: 24),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, size: 24),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 40,
          icon: const CircleAvatar(
            foregroundImage: AssetImage('images/creators/warowl.webp'),
          ),
        ),
      ],
    );
  }
}
