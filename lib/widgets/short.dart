import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Short_Widget extends StatefulWidget {
  String shortVideoPath;
  String caption;
  String likeCount = '0';
  String dislikeCount = '0';
  String commentCount = '0';
  String channelName;
  String creatorImgPath;
  bool isSubscribed;

  Short_Widget(
      {required this.channelName,
      required this.creatorImgPath,
      required this.shortVideoPath,
      this.dislikeCount = '0',
      this.commentCount = '0',
      this.likeCount = '0',
      this.caption = '',
      this.isSubscribed = false,
      super.key});
  @override
  State<Short_Widget> createState() => _Short_WidgetState();
}

class _Short_WidgetState extends State<Short_Widget> {
  bool isLiked = false;
  bool isDisLiked = false;
  // bool isSubscribed = false;

  //-----
  //WIDGET: helper
  //-----

  Widget _helperWidget(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          widget.shortVideoPath,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        //*: top row
        Positioned(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Shorts',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 24,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        //*: columns with actions
        Positioned(
          bottom: 25,
          right: 10,
          child: Column(
            children: [
              Column(children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isLiked = !isLiked;
                        isDisLiked = false;
                      });
                    },
                    child: Icon(
                        isLiked ? Icons.thumb_up_alt : Icons.thumb_up_off_alt,
                        size: 30,
                        color: Colors.white)),
                // Icons.thumb_up,
                Text(
                  widget.likeCount,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
              ]),
              const SizedBox(
                height: 25,
              ),
              Column(children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isDisLiked = !isDisLiked;
                        isLiked = false;
                      });
                    },
                    child: Icon(
                      isDisLiked
                          ? Icons.thumb_down_alt
                          : Icons.thumb_down_off_alt,
                      size: 30,
                      color: Colors.white,
                    )),
                // Icons.thumb_up,
                const Text(
                  'Disklike',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ]),
              const SizedBox(
                height: 25,
              ),
              _helperWidget(Icons.comment, widget.commentCount),
              const SizedBox(
                height: 25,
              ),
              _helperWidget(Icons.share, 'Share'),
              const SizedBox(
                height: 25,
              ),
              const Icon(
                Icons.more_horiz_rounded,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade300,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        widget.creatorImgPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -17, left: 2,
                    // right: 0,
                    child: Image.asset(
                      'images/resources/waves.gif',
                      height: 40,
                      width: 38,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        //*: bottom informations
        Positioned(
          bottom: 25,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                width: 300,
                child: ReadMoreText(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  widget.caption,
                  // 'Paris is positioned at the centre of the Île-de-France region, which is crossed by the Seine, Oise, and Marne rivers. The city is ringed with great forests of beech and oak; they are called the “lungs of Paris,” for they help to purify the air in the heavily industrialized region',
                  trimMode: TrimMode.Line,
                  trimLines: 3,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Read less',
                  colorClickableText: Colors.blue.shade600,
                  moreStyle: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w700,
                  ),
                  lessStyle: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      widget.creatorImgPath,
                    ),
                    radius: 18,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.channelName,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.isSubscribed = !widget.isSubscribed;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        height: 23,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: widget.isSubscribed
                              ? Colors.grey.shade600.withOpacity(0.3)
                              : Colors.red,
                        ),
                        child: FittedBox(
                          child: Text(
                            widget.isSubscribed ? 'SUBSCRIBED' : 'SUBSCRIBE',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
