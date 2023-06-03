class Album {
  final String coverPath;
  final String name;
  final String description;

  Album(
      {required this.coverPath, required this.name, required this.description});
}

List<Album> albums = [
  Album(
      coverPath: 'images/albums/album1.jpg',
      name: 'Bright Hits',
      description: 'The most popular, striking music news'),
  Album(
      coverPath: 'images/albums/album2.jpg',
      name: 'Bollywood Hits',
      description: 'Music for Meditation'),
  Album(
      coverPath: 'images/albums/album3.jpg',
      name: 'EDM Hits',
      description: 'English dance music for all moods'),
  Album(
      coverPath: 'images/albums/album4.png',
      name: 'Punjabi Pops',
      description: 'Punjabi masala popper'),
  Album(
      coverPath: 'images/albums/album5.jpg',
      name: 'Sleeping Music',
      description: 'relax and take a deep breadth'),
  Album(
      coverPath: 'images/albums/album6.jpg',
      name: 'Deep Meditation',
      description: 'Music for Meditation'),
];
