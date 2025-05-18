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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 140),
              child: Image.asset(
                'assets/images/dindin.png',
                width: 40,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),

        //slide menu
        drawer: const Drawer(
          child: Column(
            children: [],
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
