import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({ Key? key }) : super(key: key);

  @override
  _LatsliderState createState() => _LatsliderState();
}

class _LatsliderState extends State<SliderExample> {
  double _currentSliderPimaryValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Slider"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Adjust the Volume", style: TextStyle(fontSize: 24),),
          SizedBox(
            height: 20,
          ),
          Slider(
            min: 0,
            max: 100,
            value: _currentSliderPimaryValue, 
            label: _currentSliderPimaryValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderPimaryValue = value;
              });
            },
          ),
          Text("Volume : $_currentSliderPimaryValue")
        ],
      ),
    );
  }
}