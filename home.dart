import 'package:dintalk/user/Homepage/search.dart';
import 'package:flutter/material.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  // bool isSearchClicked = false;
  // final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                // categories
                Expanded(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Textcategories'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Textcategories'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Textcategories'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Textcategories'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Textcategories'),
                      ),
                    ],
                  ),
                )),

                // search bar
                IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearch(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
