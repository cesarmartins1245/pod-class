// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:pod_class/ui/root_app/root_app.dart';
import 'package:pod_class/ui/video_player_youtube/video_player_youtube.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Service Demo',
      debugShowCheckedModeBanner: false,
      home: AudioServiceWidget(child: RootApp()),
    );
  }
}
