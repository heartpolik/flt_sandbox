import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 900),
          reverseDuration: const Duration(milliseconds: 900),
          child: Text(
            "$_counter",
            key: ValueKey<int>(_counter),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5,
          )
        )
        // child: Text(
        //   "Sandbox application v 1.0.0",
        //   textAlign: TextAlign.center,
        //   style: Theme.of(context).textTheme.headline5,
        // )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.animation),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}