import 'package:flutter/material.dart';
import 'package:mellowdy/data/album.dart';
import 'package:mellowdy/widgets/recent_tile.dart';
import 'package:mellowdy/widgets/square_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SquareButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new_rounded,
                    size: 26.0, color: Colors.white),
              ),
              SquareButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border_rounded,
                    size: 26.0, color: Colors.white),
              ),
            ],
          ),
          Expanded(
              child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 30.0),
              Text('Recent favourites',
                  style:
                      TextStyle(fontSize: 28.0, fontWeight: FontWeight.w500)),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                children: [
                  for (Album album in albums)
                    RecentTile(coverPath: album.coverPath, name: album.name, description: album.description)
                    // RecentTile(
                    //   coverPath: 'images/albums/album1.jpg',
                    //   name: 'Bright Hits',
                    //   description: 'The most popular, striking music news',
                    // )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
