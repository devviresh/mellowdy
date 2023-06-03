import 'package:flutter/material.dart';
import 'package:mellowdy/Screens/home_screen.dart';

void main() {
  runApp(const Mellowdy());
}

class Mellowdy extends StatelessWidget {
  const Mellowdy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xfe342549), Color(0xee1c1d34)]
          )
      ),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.transparent,
          canvasColor: Colors.transparent
        ),
        home: HomeScreen(),
        routes: {

        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
