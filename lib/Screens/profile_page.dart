import 'package:flutter/material.dart';
import 'package:mellowdy/widgets/square_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                icon: Icon(Icons.mode_edit_outline_rounded,
                    size: 26.0, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Material(
            borderRadius: BorderRadius.circular(10.0),
            elevation: 5.0,
            color: Colors.white24.withOpacity(0.18),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xee1c1d34),
                        Color(0xfe342549),
                      ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    radius: 52.0,
                    child: CircleAvatar(
                      foregroundImage: AssetImage('images/viresh.jpeg'),
                      radius: 50.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text('Viresh Dev',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w500)),
                  Text(
                    'Developer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
