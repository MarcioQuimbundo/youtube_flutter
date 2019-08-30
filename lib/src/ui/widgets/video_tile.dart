import 'package:flutter/material.dart';
import 'package:fluttertube/src/models/video_model.dart';

class VideoTile extends StatelessWidget {
  final Video video;
  VideoTile(this.video);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Image.network(video.thumb, fit: BoxFit.cover),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Text(video.title, style: TextStyle(color: Colors.white, fontSize: 16), maxLines: 2,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(video.channel, style: TextStyle(color: Colors.white, fontSize: 16),),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.star_border, color: Colors.white, size: 30,),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
