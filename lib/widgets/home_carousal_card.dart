import 'dart:ui';

import 'package:flutter/material.dart';

class HomeCarousalCard extends StatelessWidget {
  HomeCarousalCard(
      {required this.title, required this.artist, required this.coverPath, required this.tonalColor});

  final String title;
  final String artist;
  final String coverPath;
  final Color tonalColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          width: 220.0,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('$coverPath'),fit: BoxFit.cover),
            // color: Colors.green,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Positioned(
          bottom: 25.0,
          left: 25.0,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            decoration: BoxDecoration(
                color: tonalColor.withOpacity(0.85),
                borderRadius: BorderRadius.circular(20.0)),
            height: 60.0,
            width: 190.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$title',maxLines: 1,overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0)),
                      SizedBox(height: 3.0),
                      Row(
                        children: [
                          Icon(Icons.music_note_outlined, size: 14.0),
                          SizedBox(width: 3.0),
                          Expanded(
                              child: Text(
                            '$artist',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 10.0),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 3.0),
                CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.play_arrow, size: 30.0))
              ],
            ),
          ),
        )
      ],
    );
  }
}
