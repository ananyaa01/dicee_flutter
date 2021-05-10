import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.purple,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
int leftDiceNumber=5;
int rightDiceNumber=2;
void changeDiceFace()
{
  setState(() {
    leftDiceNumber=Random().nextInt(6)+1;
    rightDiceNumber=Random().nextInt(6)+1;
  });
}
@override
Widget build(BuildContext context) {
return Center(
child: Row(
children: [
Expanded(child:FlatButton(
onPressed: (){
  changeDiceFace();
},
child: Image.asset('images/dice$leftDiceNumber.png'),
),
),
Expanded(child: FlatButton(
onPressed: (){
  changeDiceFace();
},
child: Image.asset('images/dice$rightDiceNumber.png'),
),),
],
),
);
}
}

