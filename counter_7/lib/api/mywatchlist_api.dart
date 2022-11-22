import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/models/mywatchlist.dart';

Future<List<MyWatchList>> fetchToDo() async {
  var url = Uri.parse('https://naufalweise-pbp-tugas-02.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object
  List<MyWatchList> dataList = [];
  for (var d in data) {
    if (d != null) {
      dataList.add(MyWatchList.fromJson(d));
    }
  }

  return dataList;
}
