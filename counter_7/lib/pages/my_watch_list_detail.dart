import 'package:counter_7/models/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyWatchListDetail extends StatelessWidget {
  const MyWatchListDetail({super.key, required this.data});

  final MyWatchList data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              data.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Column(children: [
                Table(
                  children: [
                    TableRow(children: [
                      const Text("Release Date"),
                      Text(DateFormat.yMMMd().format(data.releaseDate))
                    ]),
                    TableRow(children: [
                      const TableCell(child: Text("Rating")),
                      TableCell(child: Text("${data.rating}/5")),
                    ]),
                    TableRow(children: [
                      const Text("Status"),
                      Text(data.watched ? "Watched" : "Not Watched"),
                    ]),
                    TableRow(children: [
                      const Text("Review"),
                      Text(data.review),
                    ])
                  ],
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Back")),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
