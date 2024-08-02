import 'package:flutter/material.dart';
import 'package:melee_app/pages/home.dart';
import 'package:melee_app/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
    },
  ));
}

