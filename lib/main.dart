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
class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    int leftDicenumber = 1;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(onPressed: (){
              setState(() {
                leftDicenumber= 5;
              });

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
//
//
// class DicePage extends StatelessWidget {
//
//
// }
