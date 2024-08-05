import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tourney extends StatefulWidget {
  const Tourney({super.key});

  @override
  State<Tourney> createState() => __TourneyState();
}

class __TourneyState extends State<Tourney> {
  int tab = 0;

  final tabs = [
    Majors(),
    Locals()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoTabBar(
        backgroundColor: tab == 0 ? Colors.purple[600] : Colors.orange[600],
        onTap: (index) {
          setState(() {
            tab = index;
          });
        },
        currentIndex: tab,
        items: [
          BottomNavigationBarItem(
            activeIcon: Container(
                color: Colors.purple[600],
                child: Center(
                  child: Text(
                    "Majors",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                     ),
                  )
                ),
               ),
             icon: Container(
               color: Colors.purple[600],
               padding: EdgeInsets.all(4.0),
              child: Container(
                 color: Colors.purple[400],
                 child: Center(
                   child: Text(
                     "Majors",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  )
                ),
               ),
            ),
          ),
          BottomNavigationBarItem(
             activeIcon: Container(
                 color: Colors.orange[600],
                child: Center(
                   child: Text(
                     "Locals",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                    ),
                  )
                 ),
              ),
             icon: Container(
              color: Colors.orange[600],
              padding: EdgeInsets.all(4.0),
               child: Container(
                 color: Colors.orange[400],
                 child: Center(
                   child: Text(
                    "Locals",
                     style: TextStyle(
                       fontSize: 24.0,
                      color: Colors.black,
                    ),
                  )
                ),
              ),
             ),
           )
         ],
      ),
      body: tabs[tab],
      );
  }
}

class Majors extends StatefulWidget {
  const Majors({super.key});

  @override
  State<Majors> createState() => _MajorsState();
}

class _MajorsState extends State<Majors> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[600],
    );
  }
}

class Locals extends StatefulWidget {
  const Locals({super.key});

  @override
  State<Locals> createState() => _LocalsState();
}

class _LocalsState extends State<Locals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[600],
    );
  }
}