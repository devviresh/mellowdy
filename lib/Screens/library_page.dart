import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mellowdy/widgets/square_button.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
          SizedBox(height: 40.0),
          Container(
            width: 280.0,
            height: 280.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(image: AssetImage('images/Mellowdy.png'),fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 20.0),
          Text('Mellowdy',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30.0),),
          SizedBox(height: 5.0),
          Text('Viresh Dev',style: TextStyle(fontSize:18.0,color: Colors.white70),),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shuffle)),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous_rounded)),
                  IconButton(onPressed: (){},iconSize: 50.0, icon: Icon(Icons.play_circle_fill_rounded)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_next_rounded)),
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.repeat_rounded))
            ],
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: ProgressBar(
              progressBarColor: Colors.deepPurple,
              thumbColor: Colors.deepPurple,
              baseBarColor: Colors.deepPurple.withOpacity(0.3),
              bufferedBarColor: Colors.deepPurple.withOpacity(0.4),
              progress: Duration(seconds: 159),
              buffered: Duration(seconds: 240),
              total: Duration(seconds: 528),
              onSeek: (duration) {
                //TODO: Implement Seek Function
              },
            ),
          ),
        ],
      ),
    );
  }
}
