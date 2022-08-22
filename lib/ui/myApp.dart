// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pod_class/ui/video_player/video_player.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoPlayer(),
    );
  }
}
