import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicTile extends StatefulWidget {
  MusicTile(
      {required this.title, required this.artist, required this.imagePath, required this.audioPath});

  final String title;
  final String artist;
  final String imagePath;
  final String audioPath;

  @override
  State<MusicTile> createState() => _MusicTileState();
}

class _MusicTileState extends State<MusicTile> {
  late AudioPlayer audioPlayer;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Container(
            height: 65.0,
            width: 65.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
          ),
          SizedBox(width: 15.0),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 5.0),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 16.0,
                    color: Colors.white54,
                  ),
                  SizedBox(width: 5.0),
                  Expanded(
                      child: Text(
                    widget.artist,
                    style: TextStyle(color: Colors.white54, fontSize: 12.0),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ))
                ],
              )
            ],
          )),
          IconButton(
              onPressed: () {
                if (isPlaying){
                  audioPlayer.pause();
                }else{
                  audioPlayer.play(AssetSource(widget.audioPath));
                }
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
              icon: Icon(
                isPlaying?Icons.pause_rounded:Icons.play_arrow_rounded,
                size: 32.0,
              ))
        ],
      ),
    );
    ;
  }
}
