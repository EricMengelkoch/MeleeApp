import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:melee_app/pages/discussion.dart';
import 'package:melee_app/pages/improvement.dart';
import 'package:melee_app/pages/tounements.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  final pages = [
    Text("this is awkward>"),
    Tourney(),
    Improvement(),
    Discussion()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(child: pages[currentPageIndex]),
      bottomNavigationBar: navBarBuilder(),
    );
  }

  CupertinoTabBar navBarBuilder() {
    return CupertinoTabBar(
      onTap: (index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      currentIndex: currentPageIndex,
      height: 60.0,
      backgroundColor: Colors.black,
      activeColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.home),
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.emoji_events),
          ),
          label: "Tournements",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.trending_up),
          ),
          label: "Improvement",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.forum),
          ),
          label: "Discussion",
        ),
      ],
    );
  }
}