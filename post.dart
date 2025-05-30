import 'package:dintalk/user/Homepage/fullpost.dart';
import 'package:flutter/material.dart';

class PostInfo extends StatefulWidget {
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
  State<PostInfo> createState() => _PostInfoState();
}

class _PostInfoState extends State<PostInfo> {
  //  like or unlike
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        // view all post like ex. comment
        onTap: () {
          // ส่งข้อมูลที่จะส่งมีไรบ้างงงpost full info
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ViewFullPost(
                postId: widget.postId,
                pfImage: widget.pfImage,
                text: widget.text,
                image: widget.image,
                catId: widget.catId,
                categoryName: widget.categoryName,
              ),
            ),
          );
        },
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.pfImage),
                      radius: 33,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 5),
                              child: Text(
                                // cat post
                                widget.categoryName,
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            // report or delete button
                            IconButton(
                              icon: const Icon(Icons.more_vert_outlined),
                              padding: const EdgeInsets.only(right: 10),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            widget.text,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Image.asset(
                            widget.image,
                            width: 300,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
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
                                    color: isToggled
                                        ? Colors.red
                                        : Colors.grey[700],
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
