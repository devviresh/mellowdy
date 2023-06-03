import 'package:flutter/material.dart';

class RecentTile extends StatelessWidget {
  RecentTile({required this.coverPath, required this.name, required this.description});

  final String coverPath;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      width: 140.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140.0,
            width: 140.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage('$coverPath'),fit: BoxFit.cover)),
          ),
          SizedBox(height: 5.0),
          Text('$name',
              style: TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.white)),
          SizedBox(height: 3.0),
          Text('$description',
              style: TextStyle(color: Colors.white60,fontSize: 12.0))
        ],
      ),
    );
  }
}
