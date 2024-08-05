import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void loadUser() async {
    await Future.delayed(const Duration(milliseconds: 250), (){});
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    super.initState();
    loadUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "EVERYTHING MELEE",
              style: TextStyle(
                fontSize: 36.0,
              ),
              ),
            Text("Loading..."),
            SizedBox(height: 20.0),
            SpinKitDualRing(
              color: Colors.white,
              size: 50.0,
            ),
        ],)
      ),
    );
  }
}