import 'package:dintalk/user/Homepage/cetegories.dart';
import 'package:dintalk/user/Homepage/post.dart';
import 'package:flutter/material.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  // search bar
  bool isSearchClicked = false;
  final TextEditingController _searchController = TextEditingController();

  // categories
  final categories = [
    {'Catid': 1, 'Name': 'General'},
    {'Catid': 2, 'Name': 'Education'},
    {'Catid': 3, 'Name': 'Health & beauty'},
    {'Catid': 4, 'Name': 'Love & relationship'},
    {'Catid': 5, 'Name': 'Arts'},
    {'Catid': 6, 'Name': 'Hobby'},
    {'Catid': 7, 'Name': 'Market'},
  ];

  // post info
  final List<Map<String, dynamic>> posts = [
    {
      "postId": 101,
      "Pfimage": "assets/images/384959.png",
      "text":
          "Clock tower is very nice place forever Clock tower is very nice place forever",
      "image": "assets/images/clock-tower.jpg",
      'Catid': 1,
      'Name': 'General'
    },
    {
      "postId": 102,
      "Pfimage": "assets/images/384959.png",
      "text": "No.01",
      "image": "assets/images/clock-tower.jpg",
      'Catid': 1,
      'Name': 'Arts'
    },
    {
      "postId": 103,
      "Pfimage": "assets/images/384959.png",
      "text": "No.02",
      "image": "assets/images/tomato.PNG",
      'Catid': 1,
      'Name': 'Arts'
    },
    {
      "postId": 103,
      "Pfimage": "assets/images/384959.png",
      "text": "No.02",
      "image": "assets/images/salad.jpg",
      'Catid': 1,
      'Name': 'Love & relationship'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
              // Sreach bar
              child: isSearchClicked
                  ? Container(
                      height: 40,
                      child: TextField(
                        controller: _searchController,
                        onChanged: (context) {},
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          hintText: "Search. . .",
                        ),
                      ),
                    )
                  // show catergories
                  : SafeArea(
                      child: SizedBox(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            final datacat = categories[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Categories(
                                catId: datacat['Catid'] as int,
                                categoryName: datacat['Name'] as String,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
            ),
            // Icon for search and cancels
            IconButton(
              icon: Icon(isSearchClicked ? Icons.close : Icons.search),
              color: Colors.black,
              onPressed: () {
                setState(() {
                  isSearchClicked = !isSearchClicked;
                  if (!isSearchClicked) {
                    _searchController.clear();
                  }
                });
              },
            ),
          ],
        ),
      ),

      // body in postinfomation
      body: SingleChildScrollView(
        child: Container(
          // bg color behind card
          color: Colors.white,
          child: Column(
            children: [
              const Divider(),
              Container(
                child: ListView.builder(
                  // shrinkWrap and physics ใช้เพื่อนscrollจนสุดท้าย ก้อปเน็ตมาาาา
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final data = posts[index];
                    return PostInfo(
                      postId: data['postId'] as int,
                      pfImage: data['Pfimage'] as String,
                      text: data['text'] as String,
                      image: data['image'] as String,
                      catId: data['Catid'] as int,
                      categoryName: data['Name'] as String,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.amber[600],
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
