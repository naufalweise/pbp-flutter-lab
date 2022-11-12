import 'package:counter_7/pages/add_budget_page.dart';
import 'package:flutter/material.dart';

import 'package:counter_7/pages/counter_page.dart';

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
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CounterPage())
              );
            },
          ),
          ListTile(
            title: const Text("Tambah Budget"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AddBudgetPage())
              );
            },
          ),
          ListTile(
            title: const Text("Data Budget"),
          ),
        ],
      ),
    );
  }

}