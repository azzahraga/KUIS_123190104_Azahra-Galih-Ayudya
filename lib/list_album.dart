import 'package:flutter/material.dart';
import 'list_music.dart';
import 'top_album.dart';

class Album extends StatelessWidget {
  const Album({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spoti-Pay"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final TopAlbum album = topAlbumList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Music(
                  albumname: album.albumName,
                  singer: album.singer,
                  imageUrls: album.imageUrls,
                  releaseDate: album.releaseDate,
                  source: album.source,
                  songs: album.songs
                );
              }));
            },
            child: Card(
              child: Column(
                children: [Image.network(album.imageUrls)],
              ),
            ),
          );
        },
        itemCount: topAlbumList.length,
      ),
    );
  }
}
