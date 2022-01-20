import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.black38,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var  leftDicenumber = 3;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(onPressed: (){
              print('Left Button Got Pressed.');
            },
              child: Image.asset('images/dice$leftDicenumber.png'),//String Interpolation
            ),
          ),
          Expanded(
            child: MaterialButton( onPressed: (){
              print('Right Button Got Presses.');
            },
              child: Image.asset('images/dice2.png'),
            ),
          )
        ],
      ),
    );
  }
}