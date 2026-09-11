
import 'package:flutter/material.dart';


class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Switch(
          value: _isSwitchOn,
          activeColor: Colors.blue,
          onChanged: (bool value) {
            setState(() {
              _isSwitchOn = value;
            });
          },
        ),

        SizedBox(height: 20),

        Text(
          'Status Switch: ${_isSwitchOn ? 'Aktif' : 'Nonaktif'}',
        ),
      ],
    );
  }
}