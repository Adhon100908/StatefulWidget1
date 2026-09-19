import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({ Key? key }) : super(key: key);

  @override
  _LatswitchState createState() => _LatswitchState();
}

class _LatswitchState extends State<SwitchExample> {
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Switch"),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            value: _isSwitchOn,
            activeColor: Colors.blue, 
            onChanged: (bool value) {
              setState(() {
                _isSwitchOn = value;
              });
            }
          ),
          SizedBox(
            height: 20,
          ),
          Text("Status Switch: ${_isSwitchOn ? "Aktif" : "Nonaktif"}"),
        ],
      )
    );
  }
}