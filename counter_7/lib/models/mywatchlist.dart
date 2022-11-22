// To parse this JSON data, do
//
//     final myWatchList = myWatchListFromJson(jsonString);

import 'dart:convert';

List<MyWatchList> myWatchListFromJson(String str) => List<MyWatchList>.from(json.decode(str).map((x) => MyWatchList.fromJson(x)));

String myWatchListToJson(List<MyWatchList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class MyWatchList {
  MyWatchList({
    required this.watched,
    required this.title,
    required this.rating,
    required this.releaseDate,
    required this.review,
  });

  bool watched;
  String title;
  int rating;
  DateTime releaseDate;
  String review;

  factory MyWatchList.fromJson(Map<String, dynamic> json) {
    final field = json["fields"];
    return MyWatchList(
      watched: field["watched"],
      title: field["title"],
      rating: field["rating"],
      releaseDate: DateTime.parse(field["release_date"]),
      review: field["review"],
    );
  }

  Map<String, dynamic> toJson() => {
    "watched": watched,
    "title": title,
    "rating": rating,
    "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
    "review": review,
  };
}

