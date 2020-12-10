import 'package:flutter/material.dart';
import 'package:media/audio.dart';
import 'package:media/home.dart';
import 'package:media/offlineA.dart';
import 'package:media/onlineA.dart';
import 'package:media/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      routes: {
        '/home': (context) => Homes(),
        '/audio': (context) => Audios(),
        '/onA': (context) => OnlineAudios(),
        '/ofa': (context) => OfflineAudios(),
      },
      home: Homes(),
    );
  }
}
