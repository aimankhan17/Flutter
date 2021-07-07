import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = "";

  Widget calcbtn(texttt) {
    return ElevatedButton(
        onPressed: () {
          calc(texttt);
        },
        child: Text(texttt));
  }

  calc(texttt) {
    setState(() {
      result = result + texttt;
    });
  }

  clearr() {
    setState(() {
      result = "";
    });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: EdgeInsets.only(top: 200.0),
            child: Column(children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "$result",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  height: 450,
                  width: 360,
                  child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 25,
                      crossAxisCount: 4,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        calcbtn('1'),
                        calcbtn('2'),
                        calcbtn('3'),
                        calcbtn('+'),
                        calcbtn('4'),
                        calcbtn('5'),
                        calcbtn('6'),
                        calcbtn('-'),
                        calcbtn('7'),
                        calcbtn('8'),
                        calcbtn('9'),
                        calcbtn('*'),
                        calcbtn("0"),
                        ElevatedButton(onPressed: output, child: Text('=', style: TextStyle(color: Colors.black,) ),),
                        ElevatedButton(onPressed: clearr, child: Text('Clear',style: TextStyle(color: Colors.black,) ),),
                        calcbtn("/"),
                      ])),
            ])),
      ),
    );
  }
}
