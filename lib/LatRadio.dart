import 'package:flutter/material.dart';

enum Gender { pria, wanita }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  Gender? _jenisKelamin = Gender.pria;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Radio")),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text('Pilih Jenis Kelamin:', style: TextStyle(fontSize: 24)),

            SizedBox(height: 20),

            ListTile(
              title: const Text('Laki-Laki'),
              leading: Radio<Gender>(
                value: Gender.pria,
                groupValue: _jenisKelamin,
                onChanged: (Gender? value) {
                  setState(() {
                    _jenisKelamin = value;
                  });
                },
              ),
            ),

            ListTile(
              title: const Text('Perempuan'),
              leading: Radio<Gender>(
                value: Gender.wanita,
                groupValue: _jenisKelamin,
                onChanged: (Gender? value) {
                  setState(() {
                    _jenisKelamin = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
