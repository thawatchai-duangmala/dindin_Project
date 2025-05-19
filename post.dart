import 'package:flutter/material.dart';

class PostInfo extends StatelessWidget {
  final int postId;
  final String pfImage;
  final String text;
  final String image;
  final int catId;
  final String categoryName;

  const PostInfo({
    super.key,
    required this.postId,
    required this.pfImage,
    required this.text,
    required this.image,
    required this.catId,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      color: Colors.white70,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(pfImage),
                radius: 35,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        // cat post
                        categoryName,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Text(
                      // post text
                      text,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      image,
                      width: 300,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // box1
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite, size: 25)),
                              const Text('20'),
                              // const SizedBox(width: 5),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.comment, size: 25)),
                              const Text('20'),
                            ],
                          ),
                          // box2
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.bookmark_rounded,
                                      size: 25)),
                              // const SizedBox(width: 5),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.ios_share_sharp,
                                      size: 25)),
                            ],
                          )
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
