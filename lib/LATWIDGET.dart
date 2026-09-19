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

class LATWIDGET extends StatelessWidget {
  const LATWIDGET({Key? key}) : super(key: key);


  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[


        //buton pertama
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LatCekbox()),
            );
          },
          child: const Text("Cekbox"),
        ),

        //buton kedua
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const latdropdown()),
            );
          },
          child: const Text("Dropdown"),
        ),

        //buton ketiga
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FloatingActionButtonExample()),
            );
          },
          child: const Text("Floting"),
        ),

        //buton keempat
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DialogExample()),
            );
          },
          child: const Text("iconbuton"),
        ),

        //buton kelima
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RadioExample()),
            );
          },
          child: const Text("Radio"),
        ),

        //buton keenam
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SliderExample()),
            );
          },
          child: const Text("Slider"),
        ),

        //buton ketuju
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SwitchExample()),
            );
          },
          child: const Text("Switch"),
        ),

        //buton kedelapan
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TextButtonExample()),
            );
          },
          child: const Text("TextButon"),
        ),

        //buton kesembilan
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TextFieldExample()),
            );
          },
          child: const Text("TextField"),
        ),
      ],
    );
  }
}
