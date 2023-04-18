import 'package:flutter/material.dart';
import 'package:calculate_it/button.dart';

void main() {
  runApp(CalculatorPage());
}

class CalculatorPage extends StatefulWidget {
  CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  int firstNumber = 0;
  int secondNumber = 0;
  String history = '';
  String textToDisplay = '';
  String result = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNumber = 0;
      secondNumber = 0;
      result = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNumber = 0;
      secondNumber = 0;
      result = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        result = '-' + textToDisplay;
      } else {
        result = textToDisplay.substring(1);
      }
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNumber = int.parse(textToDisplay);
      result = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNumber = int.parse(textToDisplay);
      if (operation == '+') {
        result = (firstNumber + secondNumber).toString();
        history = firstNumber.toString() +
            operation.toString() +
            secondNumber.toString();
      }
      if (operation == '-') {
        result = (firstNumber - secondNumber).toString();
        history = firstNumber.toString() +
            operation.toString() +
            secondNumber.toString();
      }
      if (operation == 'X') {
        result = (firstNumber * secondNumber).toString();
        history = firstNumber.toString() +
            operation.toString() +
            secondNumber.toString();
      }
      if (operation == '/') {
        result = (firstNumber / secondNumber).toString();
        history = firstNumber.toString() +
            operation.toString() +
            secondNumber.toString();
      }
    } else {
        result = int.parse(textToDisplay + btnVal).toString();
      }
    setState(() {
        textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lime),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 118, 216),
        appBar: AppBar(
          title: Text(
            "CalculateIt",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
              color: Colors.white
            ),
          ),
          backgroundColor: Color.fromARGB(255, 177, 118, 216),
          elevation: 0,
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white54,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  textToDisplay,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: 'AC',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: 'C',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '<',
                  textSize: 20,
                  buttonColor: 0xC4BC45FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '/',
                  textSize: 20,
                  buttonColor: 0xC4BC45FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: '9',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '8',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '7',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: 'X',
                  textSize: 20,
                  buttonColor: 0xC4BC45FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: '6',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '5',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '4',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '-',
                  textSize: 20,
                  buttonColor: 0xC4BC45FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: '3',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '2',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '1',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '+',
                  textSize: 20,
                  buttonColor: 0xC4BC45FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: '+/-',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '0',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '00',
                  textSize: 20,
                  buttonColor: 0xC0B7C4FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
                Button(
                  text: '=',
                  textSize: 20,
                  buttonColor: 0xC4BC45FF,
                  callback: btnOnClick,
                  // textColor: 0x0000000,
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
