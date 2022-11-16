// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:counter_7/pages/add_budget_page.dart';
import 'package:counter_7/pages/data_budget_page.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/pages/counter_page.dart';
import 'package:intl/intl.dart';

import 'models/budget.dart';


void main() {
  Intl.defaultLocale = 'pt_BR';
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<MyApp> {
  final List<Budget> _budgets = [Budget(judul: "Judul 1", nominal: 1000, type: BudgetType.pemasukkan), Budget(judul: "Judul 2", nominal: 5000, type: BudgetType.pengeluaran)];

  void _addBudget(Budget budget) {
    setState(() {
      _budgets.add(budget);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Program Counter',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const CounterPage(),
        routes: {
          '/counter': (context) => const CounterPage(),
          '/budget/add': (context) => AddBudgetPage(addBudget: _addBudget),
          '/budget/data': (context) => DataBudgetPage(budgets: _budgets)
        }
    );
  }
}


