
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Calculator(),
  debugShowCheckedModeBanner: false,
));

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  Widget numberButton(String btnText, Color btnColor , Color txtColor){
    return ElevatedButton(onPressed: () {}, child: Text(
      btnText , style: TextStyle(fontSize: 25,color: txtColor),
    ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70,70),
        shape: CircleBorder(),
        primary: btnColor,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        centerTitle: true,
        title: Text('Calculator'),
      ),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children:[
                Padding(padding: EdgeInsets.all(10)
                , child :Text(
                      "0" , textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                      ),
                    )
                ),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("AC",Colors.grey[600]!, Colors.black),
                numberButton("[x]",Colors.grey[600]!, Colors.black),
                numberButton("%",Colors.grey[600]!, Colors.black),
                numberButton("/",Colors.orange[600]!, Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  numberButton("7",Colors.grey[600]!, Colors.black),
                  numberButton("8",Colors.grey[600]!, Colors.black),
                  numberButton("9",Colors.grey[600]!, Colors.black),
                  numberButton("X",Colors.orange[600]!, Colors.black),
                ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("4",Colors.grey[600]!, Colors.black),
                numberButton("5",Colors.grey[600]!, Colors.black),
                numberButton("6",Colors.grey[600]!, Colors.black),
                numberButton("-",Colors.orange[600]!, Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("1",Colors.grey[600]!, Colors.black),
                numberButton("2",Colors.grey[600]!, Colors.black),
                numberButton("3",Colors.grey[600]!, Colors.black),
                numberButton("+",Colors.orange[600]!, Colors.black),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("0",Colors.grey[600]!, Colors.black),
                numberButton("00",Colors.grey[600]!, Colors.black),
                numberButton(".",Colors.grey[600]!, Colors.black),
                numberButton("=",Colors.orange[600]!, Colors.black),
              ],
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
