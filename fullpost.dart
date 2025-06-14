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
  final TextEditingController _commentController = TextEditingController();

  List<String> comments = [
    "Nice post",
    "Nice post 1",
    "Nice post 2",
    "Nice post",
    "Nice post 1",
    "Nice post 2",
    "Nice post",
    "Nice post 2 Nice post 2 Nice post 2 Nice post 2 Nice post 2 Nice post 2 Nice post 2",
  ];

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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // scrollable
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile + category
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(widget.pfImage),
                          radius: 30,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      widget.categoryName,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    IconButton(
                                      icon:
                                          const Icon(Icons.more_vert_outlined),
                                      padding: const EdgeInsets.only(right: 10),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                // text post
                                const SizedBox(height: 5),
                                Text(widget.text),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 9),
                    // Post image
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Image.asset(
                        widget.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(),
                    // Post time
                    Text(
                      DateFormat('kk:mm – yyyy-MM-dd').format(DateTime.now()),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    // Like, comment, bookmark, share buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                color:
                                    isToggled ? Colors.red : Colors.grey[700],
                              ),
                            ),
                            const Text('20'),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.comment,
                                size: 25,
                                color: Colors.grey[700],
                              ),
                            ),
                            const Text('20'),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_rounded,
                                  color: Colors.grey[700],
                                  size: 25,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.ios_share_sharp,
                                  color: Colors.grey[700],
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(),
                    
                    // Comments list
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: comments.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, bottom: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // pic user
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(widget.pfImage),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Comment text
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    comments[index],
                                                    style: const TextStyle(
                                                        fontSize: 16),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.more_vert_outlined,
                                                size: 20,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 6),
                                        // Like row
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Icon(
                                                Icons.favorite,
                                                size: 20,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "7",
                                              style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(height: 1),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Comment input
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    decoration: InputDecoration(
                      hintText: 'Add a comment...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
