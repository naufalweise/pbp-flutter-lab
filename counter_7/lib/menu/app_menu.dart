import 'package:flutter/material.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 30,),
          ListTile(
            title: const Text("counter_7"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/counter");
            },
          ),
          ListTile(
            title: const Text("Tambah Budget"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/budget/add");
            },
          ),
          ListTile(
            title: const Text("Data Budget"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/budget/data");
            },
          ),
        ],
      ),
    );
  }

}