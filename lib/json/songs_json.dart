import 'package:flutter/material.dart';

const List song_type_1 = [
  "Music",
  "Rock",
  "Soul",
  "Classic",
  "Pop",
  "R&B",
];
const List song_type_2 = [
  "Podcasts",
  "Made For You",
  "Charts",
  "New Releases",
  "Discover",
  "Concerts",
];
const List songs = [
  {
    "img": "assets/images/img_3.jpg",
    "title": "Feelin' Good",
    "description": "Feel good with this positively timeless playlist!",
    "song_count": "100 songs",
    "date": "about 19 hr",
    "color": Color(0xFFf69129),
    // "song_url": "songs/1.mp3",
    // "song_url":
    //     "https://rr2---sn-vnpgoxucg-2xue.googlevideo.com/videoplayback?expire=1661546316&ei=7NoIY-KDK8qDobIP3s6XmAI&ip=2804%3A4b0%3A1237%3A5e00%3Ad89%3A2c0%3Aa008%3A35aa&id=o-AEla4fmVV3FUM5zx4PvyoWF0DHYb7RMgUq6PnpIwbd5Z&itag=22&source=youtube&requiressl=yes&mh=hI&mm=31%2C29&mn=sn-vnpgoxucg-2xue%2Csn-bg07dnks&ms=au%2Crdu&mv=m&mvi=2&pl=40&initcwndbps=1432500&vprv=1&mime=video%2Fmp4&ns=3sNybstwwXbb7PMdAuoQs3wH&cnr=14&ratebypass=yes&dur=35.990&lmt=1660339789789107&mt=1661524397&fvip=5&fexp=24001373%2C24007246&c=WEB&rbqsm=fr&txp=5432434&n=N2VPylFQG0uOW_-gxnmK&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgUozy9ImiQLF3yz8fgn3JW7RoSDYcMW_6PBWBvUwY188CIAKRPp-QSytSALB5ObLobkTGg2TQSgewUUrCcPBOBji8&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAN1GuSWxQB88MP9kSK8s3GXRPRv2XNzIe0opKev8UcLQAiAlBWz8Ev_iSfa38UUZN7PEgW_8drg-IGM1WkhoGlGeDw%3D%3D",
    "song_url": "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_5.jpg",
    "title": "Peaceful Piano",
    "description": "Relax and indulge with beautiful piano pieces",
    "song_count": "324 songs",
    "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/img_7.jpg",
    "title": "Deep Focus",
    "description": "Keep calm and focus with ambient and post-rock music.",
    "song_count": "195 songs",
    "date": "about 10 hr",
    "color": Color(0xFF58546c),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_4.jpg",
    "title": "Lo-Fi Beats",
    "description": "Beats to relax, study and focus.",
    "song_count": "599 songs",
    "date": "about 21 hr",
    "color": Color(0xFFbad6ec),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_2.jpg",
    "title": "Chill Lofi Study Beats",
    "description": "The perfect study beats, twenty four seven.",
    "song_count": "317 songs",
    "date": "about 11 hr",
    "color": Color(0xFF93689a),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_6.jpg",
    "title": "Chill Hits",
    "description": "Kick back to the best new and recent chill tunes.",
    "song_count": "130 songs",
    "date": "about 7 hr",
    "color": Color(0xFFa4c4d3),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_1.jpg",
    "title": "Dark & Stormy",
    "description": "Beautifully dark, dramatic tracks.",
    "song_count": "50 songs",
    "date": "about 17 hr",
    "color": Color(0xFF5e4f78),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/img_8.jpg",
    "title": "Feel Good Piano",
    "description": "Positive piano music",
    "song_count": "69 songs",
    "date": "2 hr 14 min",
    "color": Color(0xFFa4c1ad),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_9.jpg",
    "title": "Sad Songs",
    "description": "Beautiful songs to break your heart...",
    "song_count": "60 songs",
    "date": "3 hr 25 min",
    "color": Color(0xFFd9e3ec),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_10.jpg",
    "title": "Mood Booster",
    "description": "Get happy with today's dose of feel-good songs",
    "song_count": "75 songs",
    "date": "3 hr 56 min",
    "color": Color(0xFF4e6171),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  }
];
