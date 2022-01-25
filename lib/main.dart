import 'package:flutter/material.dart';
import 'dart:math';
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
class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDiceNumber =1;
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(onPressed: (){
              setState(() {
                leftDicenumber= Random().nextInt(6)+1;
                rightDiceNumber=Random().nextInt(6)+1;
              });

            },
              child: Image.asset('images/dice$leftDicenumber.png'),//String Interpolation
            ),
          ),
          Expanded(
            child: MaterialButton( onPressed: (){
              setState(() {
                rightDiceNumber=Random().nextInt(6)+1;
                leftDicenumber= Random().nextInt(6)+1;
              });
            },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
//
//
// class DicePage extends StatelessWidget {
//
//
// }
