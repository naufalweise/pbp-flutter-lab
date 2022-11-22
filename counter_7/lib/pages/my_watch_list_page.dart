import 'package:counter_7/api/mywatchlist_api.dart';
import 'package:counter_7/pages/my_watch_list_detail.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/models/mywatchlist.dart';
import 'package:intl/intl.dart';

import '../menu/app_menu.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({super.key});

  @override
  State<StatefulWidget> createState() => MyWatchListPageState();
}

class MyWatchListPageState extends State<MyWatchListPage> {
  late Future<List<MyWatchList>> dataList;

  @override
  void initState() {
    super.initState();
    dataList = fetchToDo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Watch List"),
      ),
      drawer: const AppMenu(),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: FutureBuilder<List<MyWatchList>>(
              future: dataList,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return MyWatchListView(
                    dataList: snapshot.data!,
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          )),
    );
  }
}

class MyWatchListView extends StatelessWidget {
  final List<MyWatchList> dataList;

  const MyWatchListView({super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: dataList.length, itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text(dataList[index].title),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MyWatchListDetail(data: dataList[index])));
          },
        ),
      );
    });
  }
}
