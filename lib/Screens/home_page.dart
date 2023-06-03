import 'package:flutter/material.dart';
import 'package:mellowdy/constants.dart';
import 'package:mellowdy/data/song.dart';
import 'package:mellowdy/widgets/home_carousal_card.dart';
import 'package:mellowdy/widgets/music_tile.dart';
import 'package:mellowdy/widgets/square_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 20.0),
              SquareButton(
                onPressed: () {},
                icon: Icon(Icons.wrap_text_rounded,
                    size: 26.0, color: Colors.white),
              ),
              SizedBox(width: 15.0),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search, size: 30.0),
                        hintText: 'search',
                        iconColor: Colors.white54,
                        border: InputBorder.none,
                        isDense: true),
                  ),
                ),
              ),
              SizedBox(width: 20.0),
            ],
          ),
          SizedBox(height: 30.0),
          Expanded(child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Trending right now',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                height: 210.0,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10.0),
                    for (Song song in songs)
                      HomeCarousalCard(
                        title: song.title,
                        artist: song.artist,
                        coverPath: song.coverPath,
                        tonalColor: song.tonalColor,
                      )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 55.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10.0),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xfe4FA2F3),Color(0xfe462994)]
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Center(child: Text('Trending right now')),
                    ),
                    for (String genre in genres)
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                        margin: EdgeInsets.all(5.0),
                        child: Center(child: Text('$genre')),
                      )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
                child: Column(
                  children: [
                    for(Song song in songs)
                      MusicTile(
                        imagePath: song.imagePath,
                        title: song.title,
                        artist: song.artist,
                        audioPath: song.audioPath,
                      )
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}

