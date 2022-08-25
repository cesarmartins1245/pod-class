// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart'
    as progress_bar;

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=7IG5kRFIMZw&ab_';

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          YoutubePlayer(controller: controller),
          Scaffold(
            body: Container(
              color: Colors.grey.shade800,
              child: Column(
                children: [
                  Card(
                    child: Column(
                      children: [
                        SizedBox(height: 200),
                        Column(
                          children: [
                            Image.network('https://picsum.photos/170/170'),
                            Text(
                              'titulo',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              controller.metadata.author,
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        progress_bar.ProgressBar(
                          progress: Duration(milliseconds: 0),
                          total: controller.metadata.duration,
                          onSeek: (duration) {},
                        ),
                        ControllerBar(),
                      ],
                    ),
                  ),
                  Text('321321321'),
                ],
              ),
            ),
          ),
        ],
      );

  Card ControllerBar() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              Icons.skip_previous_sharp,
              size: 30,
            ),
            onPressed: () {
              const url =
                  'https://rr2---sn-vnpgoxucg-2xul.googlevideo.com/videoplayback?expire=1661222931&ei=s-sDY7PMBqbH1sQPlfaYuAc&ip=2804%3A4b0%3A1237%3A5e00%3A20fe%3A4a5b%3A12a%3A5c87&id=o-ALzjUxezai8NpKLGla-AO7MUiQ2CfDcKudJDKuZ8bT1N&itag=22&source=youtube&requiressl=yes&mh=IH&mm=31%2C29&mn=sn-vnpgoxucg-2xul%2Csn-bg07dnkr&ms=au%2Crdu&mv=m&mvi=2&pl=42&initcwndbps=1337500&vprv=1&mime=video%2Fmp4&ns=lSuPHFEEuuL_0kvoibUdHr0H&cnr=14&ratebypass=yes&dur=78.994&lmt=1660670484425236&mt=1661200887&fvip=3&fexp=24001373%2C24007246&c=WEB&rbqsm=fr&txp=5532434&n=aLuqTQ0XPWT8K1l0CV&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgVu9f6CFbZHGZmiTBoAU-0BgF821iTZeGuMTd68VskdQCIAoPytKV_wvcz4atkmNM0syK_o7KuYnuZR6reKqayYGQ&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAJG8eYDnhLxy0pX2b2flQA-H0yQ3Wk9rnoz2yae3moV2AiBusW9J6sYHeUgIdAdXuc_BuPjTKtWLDURLNCGrICPYeg%3D%3D';
              controller.load(YoutubePlayer.convertUrlToId(url)!);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.replay_10_sharp,
              size: 30,
            ),
            onPressed: () {
              const url =
                  'https://www.youtube.com/watch?v=GQyWIur03aw&ab_channel=JohannesMilke';
              controller.load(YoutubePlayer.convertUrlToId(url)!);
            },
          ),
          IconButton(
            icon: Icon(
              (_isPlaying == false) ? Icons.play_arrow_sharp : Icons.pause,
              size: 35,
            ),
            onPressed: () {
              (_isPlaying == false) ? controller.play() : controller.pause();
              (_isPlaying == false)
                  ? (_isPlaying = true)
                  : (_isPlaying = false);
              setState(() {});
            },
          ),
          IconButton(
            icon: Icon(
              Icons.forward_10_sharp,
              size: 30,
            ),
            onPressed: () {
              Duration d = controller.metadata.duration;
              print(d);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.skip_next_sharp,
              size: 30,
            ),
            onPressed: () {
              const url =
                  'https://www.youtube.com/watch?v=GQyWIur03aw&ab_channel=JohannesMilke';
              controller.load(YoutubePlayer.convertUrlToId(url)!);
            },
          ),
        ],
      ),
    );
  }

  format(Duration d) => d.toString().split('.').first.padLeft(8, "0");
}
