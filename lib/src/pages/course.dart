import 'package:flutter/material.dart';
import '../services/fetch.dart';
import '../widgets/video_list.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Core Elements"),
      ),
      body: FutureBuilder(
          future: fetchPage(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text("Error");
              }
              return Container(
                child: VideoList(snapshot.data.videos),
              );
            } else
              return Center(
                child: CircularProgressIndicator(),
              );
          }),
    );
  }
}
