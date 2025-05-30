import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ViewFullPost extends StatefulWidget {
  final int postId;
  final String pfImage;
  final String text;
  final String image;
  final int catId;
  final String categoryName;

  const ViewFullPost({
    super.key,
    required this.postId,
    required this.pfImage,
    required this.text,
    required this.image,
    required this.catId,
    required this.categoryName,
  });

  @override
  State<ViewFullPost> createState() => _ViewFullPostState();
}

class _ViewFullPostState extends State<ViewFullPost> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 140),
          child: Image.asset(
            'assets/images/logo.PNG',
            width: 40,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.pfImage),
                        radius: 30,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  // categories
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.categoryName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              // report btn
                              IconButton(
                                icon: const Icon(Icons.more_vert_outlined),
                                padding: const EdgeInsets.only(right: 10),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // text post
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(widget.text),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 9),
              // Post image
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    DateFormat('kk:mm –yyyy-MM-dd ').format(DateTime.now()),
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              // Like comment
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // box1
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isToggled = !isToggled;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: isToggled ? Colors.red : Colors.grey[700],
                        ),
                      ),
                      const Text('20'),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.comment,
                              size: 25, color: Colors.grey[700])),
                      const Text('20'),
                    ],
                  ),
                  // box2
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_rounded,
                                color: Colors.grey[700], size: 25)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.ios_share_sharp,
                                color: Colors.grey[700], size: 25)),
                      ],
                    ),
                  )
                ],
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
