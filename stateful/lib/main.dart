import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Calculator(),
      debugShowCheckedModeBanner: false,
    ));

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numberButton(String btnText, Color btnColor, Color txtColor) {
    return ElevatedButton(
      onPressed: () => {calculate(btnText)},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70),
        backgroundColor: btnColor,
        shape: CircleBorder(),
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: txtColor),
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  )),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("AC", Colors.grey[600]!, Colors.black),
                numberButton("DE", Colors.grey[600]!, Colors.black),
                numberButton("%", Colors.grey[600]!, Colors.black),
                numberButton("/", Colors.orange[600]!, Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("7", Colors.grey[600]!, Colors.black),
                numberButton("8", Colors.grey[600]!, Colors.black),
                numberButton("9", Colors.grey[600]!, Colors.black),
                numberButton("*", Colors.orange[600]!, Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("4", Colors.grey[600]!, Colors.black),
                numberButton("5", Colors.grey[600]!, Colors.black),
                numberButton("6", Colors.grey[600]!, Colors.black),
                numberButton("-", Colors.orange[600]!, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("1", Colors.grey[600]!, Colors.black),
                numberButton("2", Colors.grey[600]!, Colors.black),
                numberButton("3", Colors.grey[600]!, Colors.black),
                numberButton("+", Colors.orange[600]!, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("0", Colors.grey[600]!, Colors.black),
                numberButton("00", Colors.grey[600]!, Colors.black),
                numberButton(".", Colors.grey[600]!, Colors.black),
                numberButton("=", Colors.orange[600]!, Colors.black),
              ],
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  int firstnum = 0;
  int secondnum = 0;
  String result = "";
  String text = "";
  String operation = "";

  void calculate(String btn) {
    if (btn == "AC") {
      result = " ";
      text = " ";
      firstnum = 0;
      secondnum = 0;
    } else if (btn == "+" ||
        btn == "-" ||
        btn == "*" ||
        btn == "/" ||
        btn == "%") {
      operation = btn;
      if (text.isNotEmpty) {
        firstnum = int.parse(text);
      }
      result = "";
    } else if (btn == "DE") {
      if (text.isNotEmpty) {
        text = text.substring(0, text.length - 1);
      } else {
        text += btn;
      }
    } else if (btn == "=") {
      if (text.isNotEmpty) {
        secondnum = int.parse(text);
      }
      switch (operation) {
        case "+":
          result = (firstnum + secondnum).toString();
          break;
        case "-":
          result = (firstnum - secondnum).toString();
          break;
        case "*":
          result = (firstnum * secondnum).toString();
          break;
        case "/":
          result = (firstnum / secondnum).toString();
          break;
        case "%":
          result = (firstnum % secondnum).toString();
          break;
        default:
          result = "Error";
      }
      firstnum = 0;
      operation = "";
    } else {
      result += btn;
    }
    setState(() {
      text = result;
    });
  }
}
