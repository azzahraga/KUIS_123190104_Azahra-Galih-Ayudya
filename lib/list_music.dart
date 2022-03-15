import 'package:flutter/material.dart';
import 'top_album.dart';

class Music extends StatelessWidget {
  final String albumname;
  final String singer;
  final String imageUrls;
  final String releaseDate;
  final String source;
  List<String> songs;

  const Music({Key? key,
    required this.albumname,
    required this.singer,
    required this.imageUrls,
    required this.releaseDate,
    required this.source,
    required this.songs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(albumname),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(imageUrls),
            Text(albumname,
              style: TextStyle(fontSize: 25)),
            SizedBox(height: 5,),
            Text(singer,
              style: TextStyle(fontSize: 15)),
            SizedBox(height: 5,),
            Text(releaseDate + " | " + source,
              style: TextStyle(fontSize: 15)),
            _listMusic(context)
          ],
        ),
      ),
    );
  }

  Widget _listMusic(BuildContext context){
    return Container(
      child: ListView.builder(itemBuilder: (context, index)
          {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(songs),
              ),
            );
          },
        itemCount: topAlbumList.length
      ),
    );
  }
}
