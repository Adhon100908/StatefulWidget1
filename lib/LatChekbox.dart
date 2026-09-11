import 'package:flutter/material.dart';

class LatCekbox extends StatefulWidget {
  const LatCekbox({super.key});

  @override
  State<LatCekbox> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<LatCekbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan Chekbox')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: isChecked,
            onChanged: (bool? values) {
              setState(() {
                isChecked = values!;
              });
            },
          ),
        ],
      ),
    );
  }
}
