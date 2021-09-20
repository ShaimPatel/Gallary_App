// To parse this JSON data, do
//
//     final picSumModel = picSumModelFromJson(jsonString);

import 'dart:convert';

PicSumModel picSumModelFromJson(String str) =>
    PicSumModel.fromJson(json.decode(str));

String picSumModelToJson(PicSumModel data) => json.encode(data.toJson());

class PicSumModel {
  PicSumModel({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  String? id;
  String? author;
  int? width;
  int? height;
  String? url;
  String? downloadUrl;

  factory PicSumModel.fromJson(Map<String, dynamic> json) => PicSumModel(
        id: json["id"],
        author: json["author"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        downloadUrl: json["download_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "author": author,
        "width": width,
        "height": height,
        "url": url,
        "download_url": downloadUrl,
      };
}
