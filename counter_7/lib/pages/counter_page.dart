
import 'dart:math';
import 'package:counter_7/menu/app_menu.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  final String title = "Program Counter";

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() => _counter++);
  }

  void _decrementCounter() {
    setState(() => {_counter = max(0, _counter - 1)});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: CounterDisplay(counter: _counter,)
        ),
        drawer: const AppMenu(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: <Widget>[
                if (_counter > 0)
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: FloatingActionButton(
                        onPressed: _decrementCounter,
                        tooltip: "Decrement",
                        child: const Icon(Icons.remove),
                      )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                )
              ],
            )));
  }
}

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key, required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          counter.isOdd ? "GANJIL" : "GENAP",
          style: TextStyle(color: counter.isOdd ? Colors.blue : Colors.red),
        ),
        Text(
          '$counter',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
