import 'package:flutter/material.dart';

class Song {
  final String coverPath;
  final String imagePath;
  final String title;
  final String artist;
  final Color tonalColor;
  final String audioPath;

  Song(
      {required this.coverPath,
      required this.imagePath,
      required this.title,
      required this.artist,
      required this.tonalColor,
      required this.audioPath});
}

List<Song> songs = [
  Song(
      coverPath: 'images/covers/cover1.jpg',
      imagePath: 'images/songs/song1.jpg',
      title: 'Zindagi Se (Raaz-3)',
      artist: 'Shafaqat Ali',
      tonalColor: Colors.brown,
      audioPath: 'song1.mp3'),
  Song(
      coverPath: 'images/covers/cover2.jpg',
      imagePath: 'images/songs/song2.jpg',
      title: 'Breathless',
      artist: 'Shankar Mahadevan',
      tonalColor: Colors.deepPurple,
      audioPath: 'song2.mp3'),
  Song(
      coverPath: 'images/covers/cover3.jpg',
      imagePath: 'images/songs/song3.jpg',
      title: 'Tujhse Naraz Nahi Zindagi',
      artist: 'Sanam, R.D Burman',
      tonalColor: Colors.indigo,
      audioPath: 'song3.mp3'),
];
