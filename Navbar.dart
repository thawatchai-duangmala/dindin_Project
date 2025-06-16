import 'package:dintalk/user/Eventpage/event.dart';
import 'package:dintalk/user/Homepage/home.dart';
import 'package:dintalk/user/Notipage/Noti.dart';
import 'package:dintalk/user/chatpage/chat.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool light0 = true;
  bool light1 = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Container(
              child: Image.asset(
                'assets/images/logo.PNG',
                width: 40,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Divider(
              // height: 1,
              // color: Colors.grey,
            ),
          ),
        ),

        //slide menu
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/kira.jpg'),
                            radius: 33,
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top: 60, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Username'),
                              Text('65315010XX'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          label: const Text(
                            'Post',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.replay_outlined,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Response',
                              style: TextStyle(color: Colors.black),
                            )),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Bookmark',
                              style: TextStyle(color: Colors.black),
                            )),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Setting',
                              style: TextStyle(color: Colors.black),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Row(
                            children: [
                              Icon(
                                Icons.light_mode,
                                color: light1 ? Colors.grey : Colors.amber,
                              ),
                              Switch(
                                value: light1,
                                onChanged: (bool value) {
                                  setState(() {
                                    light1 = value;
                                  });
                                },
                              ),
                              Icon(
                                Icons.dark_mode,
                                color: light1
                                    ? Colors.deepPurpleAccent[800]
                                    : Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.logout_outlined,
                                color: Colors.red),
                            label: const Text('Logout',
                                style: TextStyle(color: Colors.red))),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Watch each tab
        body: const TabBarView(
          children: [
            HomeUser(),
            EventUser(),
            NotiUser(),
            ChatUser(),
          ],
        ),

        // Botton navigationbar
        bottomNavigationBar: Container(
          color: const Color(0xFF384959),
          child: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color(0xFF384959),
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.event_rounded),
                text: 'Event',
              ),
              Tab(
                icon: Icon(Icons.notifications_none),
                text: 'Notification',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
