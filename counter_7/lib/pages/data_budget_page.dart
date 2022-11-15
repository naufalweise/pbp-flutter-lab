import 'package:flutter/material.dart';
import 'package:counter_7/models/budget.dart';

import '../menu/app_menu.dart';

class DataBudgetPage extends StatelessWidget {
  const DataBudgetPage({super.key, required this.budgets});

  final List<Budget> budgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Budget"),
        ),
        drawer: AppMenu(),
        body: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: budgets.length,
            itemBuilder: (BuildContext context, int index) {
              return _BudgetDescription(budget: budgets[index]);
            }));
  }
}

class _BudgetDescription extends StatelessWidget {
  const _BudgetDescription({super.key, required this.budget});

  final Budget budget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5),
      child: ListTile(
          title: Text(budget.judul),
          tileColor: Colors.white,
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("${budget.nominal}"), Text(budget.type.name)],
          )),
    );
  }
}
