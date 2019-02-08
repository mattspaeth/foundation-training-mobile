import 'package:flutter/material.dart';
import '../models/page_model.dart';
import '../pages/chewie.dart';

class VideoList extends StatelessWidget {
  final List<Video> videos;

  VideoList(this.videos);

  Widget build(context) {
    return ListView.builder(
      itemCount: videos.length,
      itemBuilder: (context, int index) {
        return buildVideo(context, videos[index]);
      },
    );
  }

  Widget buildVideo(BuildContext context, Video video) {
    return Container(
      //padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      VideoPlayer(video.name, video.filesList[3].link),
                ),
              );
            },
            child: Card(
              child: Image.network(video.picturesList[2].link),
            ),
          ),
          //Text(video.picturesList[0].link),
          //Text(video.name),
        ],
      ),
    );
  }
}
