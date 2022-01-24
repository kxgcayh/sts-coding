// To parse this JSON data, do
//
//     final modelMeme = modelMemeFromJson(jsonString);

import 'dart:convert';

ModelMeme modelMemeFromJson(String str) => ModelMeme.fromJson(json.decode(str));

String modelMemeToJson(ModelMeme data) => json.encode(data.toJson());

class ModelMeme {
  ModelMeme({
    required this.success,
    required this.data,
  });

  bool success;
  Data data;

  factory ModelMeme.fromJson(Map<String, dynamic> json) => ModelMeme(
        success: json["success"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
      };
}

class Data {
  Data({required this.memes});

  List<Meme> memes;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        memes: List<Meme>.from(json["memes"].map((x) => Meme.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "memes": List<dynamic>.from(memes.map((x) => x.toJson())),
      };

  static List<Meme> dummyData() {
    return [
      Meme(
        id: '181913649',
        name: 'Drake Hotline Bling"',
        url: 'https://i.imgflip.com/30b1gx.jpg',
        width: 1200,
        height: 1200,
        boxCount: 2,
      ),
      Meme(
        id: '87743020',
        name: 'Two Buttons',
        url: 'https://i.imgflip.com/1g8my4.jpg',
        width: 600,
        height: 908,
        boxCount: 3,
      ),
    ];
  }
}

class Meme {
  Meme({
    required this.id,
    required this.name,
    required this.url,
    required this.width,
    required this.height,
    required this.boxCount,
  });

  String id;
  String name;
  String url;
  int width;
  int height;
  int boxCount;

  factory Meme.fromJson(Map<String, dynamic> json) => Meme(
        id: json["id"],
        name: json["name"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
        boxCount: json["box_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "url": url,
        "width": width,
        "height": height,
        "box_count": boxCount,
      };
}
