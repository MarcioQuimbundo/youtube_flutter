import 'dart:convert';

import 'package:fluttertube/src/global/const.dart';
import 'package:fluttertube/src/models/video_model.dart';
import 'package:http/http.dart' as http;

class Api {
  search(String search) async {
    http.Response response = await http.get(
        "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=${ConstGlobal.API_KEY}&maxResults=10");

    decode(response);
  }

  List<Video> decode(http.Response response) {
    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);

      List<Video> videos = decoded["items"].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();

      print(videos);
      return videos;
    } else {
      throw Exception("Failed to load videos");
    }
  }
}
