import 'package:flutter/material.dart';

const List<String> list = <String>[
  'satu',
  'dua',
  'tiga',
  'empat'
];

class latdropdown extends StatefulWidget {
  const latdropdown({super.key});

  @override
  State<latdropdown> createState() => _LatDropdownState();
}

class _LatDropdownState extends State<latdropdown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Dropdown'),
      ),
      body: Center(
        child: DropdownMenu<String>(
          initialSelection: list.first,
          onSelected: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          dropdownMenuEntries:
              list.map<DropdownMenuEntry<String>>((String value) {
            return DropdownMenuEntry<String>(
              value: value,
              label: value,
            );
          }).toList(),
        ),
      ),
    );
  }
}