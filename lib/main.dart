import 'package:flutter/material.dart';
import 'LatChekbox.dart';
import 'LatDropdown.dart';
import 'LatFloatingAction.dart';
import 'LatIconButton.dart';
import 'LatRadio.dart';
import 'LatSlider.dart';
import 'LatSwitch.dart';
import 'LatTextButton.dart';
import 'LatTextField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Scaffold(
        body: TextFieldExample(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      // Diperbaiki: child FloatingActionButton tidak lagi
      // menggunakan DropdownMenuExample.
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'latihan CheckBox',
        child: const Icon(Icons.add),
      ),
    );
  }
}