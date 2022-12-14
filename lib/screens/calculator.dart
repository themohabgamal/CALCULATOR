import 'package:flutter/material.dart';
import 'package:week1s2/components/calculator_btn.dart';

class calculator extends StatefulWidget {
  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String resultText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10, top: 30),
                    child: Text(resultText, style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),))
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                calculator_btn(digit: "7", onClick: onDigitClick),
                calculator_btn(digit: "8", onClick: onDigitClick),
                calculator_btn(digit: "9", onClick: onDigitClick),
                calculator_btn(digit: "+", onClick: onOperatorClick),
              ],
            ),
          ), Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                calculator_btn(digit: "4", onClick: onDigitClick),
                calculator_btn(digit: "5", onClick: onDigitClick),
                calculator_btn(digit: "6", onClick: onDigitClick),
                calculator_btn(digit: "-", onClick: onOperatorClick),
              ],
            ),
          ), Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                calculator_btn(digit: "1", onClick: onDigitClick),
                calculator_btn(digit: "2", onClick: onDigitClick),
                calculator_btn(digit: "3", onClick: onDigitClick),
                calculator_btn(digit: "*", onClick: onOperatorClick),
              ],
            ),
          ), Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                calculator_btn(digit: ".", onClick: onDigitClick),
                calculator_btn(digit: "0", onClick: onDigitClick),
                calculator_btn(digit: "=", onClick: onEqualClick),
                calculator_btn(digit: "/", onClick: onOperatorClick),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
