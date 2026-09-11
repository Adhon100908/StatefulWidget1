import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatelessWidget {
const FloatingActionButtonExample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.arrow_right_alt),
        onPressed: () {},
        label: Text('Next Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('contohFloating Action Button', style: TextStyle(fontSize: 48), textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}