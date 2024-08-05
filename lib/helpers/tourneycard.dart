import 'package:flutter/material.dart';

class TourneyCard extends StatelessWidget {
  const TourneyCard({super.key, required this.index, required this.context});
  final int index;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Tourneycard $index",
      child: Material(
        child: ListTile(
          title: Text("Test $index"),
          tileColor: Colors.purple[600],
          onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(title: const Text('ListTile Hero')),
                        body: Center(
                          child: Hero(
                            tag: "Tourneycard $index",
                            child: Material(
                              child: ListTile(),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          );
  }
}