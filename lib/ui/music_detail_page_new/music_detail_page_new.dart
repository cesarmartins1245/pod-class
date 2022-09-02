// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pod_class/_utilitys/app_config.dart';

class MusicDetailPageNew extends StatefulWidget {
  final String title;
  final String description;
  final Color color;
  final String img;
  final String songUrl;

  const MusicDetailPageNew(
      {Key? key,
      required this.title,
      required this.description,
      required this.color,
      required this.img,
      required this.songUrl})
      : super(key: key);
  @override
  _MusicDetailPageState createState() => _MusicDetailPageState();
}

class _MusicDetailPageState extends State<MusicDetailPageNew> {
  double _currentSliderValue = 20;

  // audio player here
  late final player = AudioPlayer();
  late AudioPlayer advancedPlayer;
  late AudioCache audioCache;
  bool isPlaying = true;

  @override
  Future<void> initState() async {
    super.initState();
    initPlayer();
  }

  initPlayer() async {
    // advancedPlayer = AudioPlayer();
    // player = AudioPlayer();
    // audioCache = AudioCache(fixedPlayer: advancedPlayer);
    playSound();
  }

  playSound() async {
    await player.play(
        'https:rr2---sn-vnpgoxucg-2xue.googlevideo.com/videoplayback?expire=1661807328&ei=gNYMY8WbCc2fxgTttI6gDg&ip=2804%3A4b0%3A1237%3A5e00%3Ab158%3Ad2b7%3A9065%3A5c03&id=o-AMA726LE5-AJVmTPriKBaw9G_0ujdUP4avNGBbny3phT&itag=22&source=youtube&requiressl=yes&mh=hI&mm=31%2C29&mn=sn-vnpgoxucg-2xue%2Csn-bg0eznle&ms=au%2Crdu&mv=m&mvi=2&pl=40&initcwndbps=1475000&vprv=1&mime=video%2Fmp4&ns=6JOlOd10H5-7KSaOR928ZxgH&cnr=14&ratebypass=yes&dur=35.990&lmt=1660339789789107&mt=1661785290&fvip=2&fexp=24001373%2C24007246&c=WEB&rbqsm=fr&txp=5432434&n=GT5lQF_vsYQqtb7Eonnih&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgIpiESSdkF6XHGvmnMhJaudBSJY0Fy9BW1IuPtPYlbb0CIQCJv9Y2bE_jUsfsH8erBxMlYp1Em-rflZD0bok-WeciAA%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhAIPv-pq6Y7DOivmao4jO2D5Cre2p0KuOPkH-gvJDFEK_AiEA77sVvXjOR5040a37FxWq6mtR_SfohU71_n6cPwfYPyE%3D');
  }

  stopSound() async {
    await player.pause();
  }

  resumeSound() async {
    await player.resume();
  }
  // playSound() async {
  //   await advancedPlayer.play(
  //     'https://rr2---sn-vnpgoxucg-2xue.googlevideo.com/videoplayback?expire=1661807328&ei=gNYMY8WbCc2fxgTttI6gDg&ip=2804%3A4b0%3A1237%3A5e00%3Ab158%3Ad2b7%3A9065%3A5c03&id=o-AMA726LE5-AJVmTPriKBaw9G_0ujdUP4avNGBbny3phT&itag=22&source=youtube&requiressl=yes&mh=hI&mm=31%2C29&mn=sn-vnpgoxucg-2xue%2Csn-bg0eznle&ms=au%2Crdu&mv=m&mvi=2&pl=40&initcwndbps=1475000&vprv=1&mime=video%2Fmp4&ns=6JOlOd10H5-7KSaOR928ZxgH&cnr=14&ratebypass=yes&dur=35.990&lmt=1660339789789107&mt=1661785290&fvip=2&fexp=24001373%2C24007246&c=WEB&rbqsm=fr&txp=5432434&n=GT5lQF_vsYQqtb7Eonnih&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgIpiESSdkF6XHGvmnMhJaudBSJY0Fy9BW1IuPtPYlbb0CIQCJv9Y2bE_jUsfsH8erBxMlYp1Em-rflZD0bok-WeciAA%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhAIPv-pq6Y7DOivmao4jO2D5Cre2p0KuOPkH-gvJDFEK_AiEA77sVvXjOR5040a37FxWq6mtR_SfohU71_n6cPwfYPyE%3D',
  //   );
  // }

  // stopSound() async {
  //   await advancedPlayer.pause();
  // }

  // resumeSound() async {
  //   await advancedPlayer.resume();
  // }

  // seekSound() async {
  //   File audioFile = await audioCache.load(widget.songUrl);
  //   await advancedPlayer.setUrl(audioFile.path);
  //   advancedPlayer.seek(Duration(milliseconds: 2000));
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    stopSound();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(30), child: getAppBar()),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: black,
      elevation: 0,
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        IconButton(
            icon: Icon(
              Icons.more_vert,
              color: white,
            ),
            onPressed: null)
      ],
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Container(
                  width: size.width - 100,
                  height: size.width - 100,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: widget.color,
                        blurRadius: 50,
                        spreadRadius: 5,
                        offset: Offset(-10, 40))
                  ], borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Container(
                  width: size.width - 60,
                  height: size.width - 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.img), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              width: size.width - 80,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.create_new_folder_outlined,
                    color: white,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 18,
                            color: white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          widget.description,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, color: white.withOpacity(0.5)),
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: white,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Slider(
              activeColor: primary,
              value: _currentSliderValue,
              min: 0,
              max: 200,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
                // seekSound();
              }),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1:50",
                  style: TextStyle(color: white.withOpacity(0.5)),
                ),
                Text(
                  "4:68",
                  style: TextStyle(color: white.withOpacity(0.5)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.shuffle,
                      color: white.withOpacity(0.8),
                      size: 25,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.skip_previous,
                      color: white.withOpacity(0.8),
                      size: 25,
                    ),
                    onPressed: null),
                IconButton(
                    iconSize: 50,
                    icon: Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: primary),
                      child: Center(
                        child: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          size: 28,
                          color: white,
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (isPlaying) {
                        stopSound();
                        setState(() {
                          isPlaying = false;
                        });
                      } else {
                        resumeSound();
                        setState(() {
                          isPlaying = true;
                        });
                      }
                    }),
                IconButton(
                    icon: Icon(
                      Icons.skip_next,
                      color: white.withOpacity(0.8),
                      size: 25,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.repeat,
                      color: white.withOpacity(0.8),
                      size: 25,
                    ),
                    onPressed: null)
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(
                Icons.tv,
                color: primary,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  "Chromecast is ready",
                  style: TextStyle(color: primary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<AudioPlayer>('advancedPlayer', advancedPlayer));
  }
}
