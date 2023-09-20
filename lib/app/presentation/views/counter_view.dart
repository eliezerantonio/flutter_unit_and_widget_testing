// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _counter = 0;

  void _increment() {
    _counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            key: const Key("icon-button"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Scaffold(
                    appBar: AppBar(),
                    body: const Center(
                      child: Text("data"),
                    ),
                  ),
                ),
              );
            },
            icon: const Icon(Icons.next_plan),
          )
        ],
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      floatingActionButton: _counter < 5
          ? FloatingActionButton(
              key: const Key('button'),
              onPressed: _increment,
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
