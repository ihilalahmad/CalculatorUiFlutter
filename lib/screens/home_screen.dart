import 'package:calculator_app_flutter/components/buttons.dart';
import 'package:calculator_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  void onEqualPress() {
    final finalUserInput = userInput.replaceAll('x', '*');
    Parser parser = Parser();
    Expression expression = parser.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double evaluate = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = evaluate.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              userInput.toString(),
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                            Text(
                              answer.toString(),
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MyButton(
                            btnText: 'AC',
                            btnOnPressed: () {
                              userInput = '';
                              answer = '';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '+/-',
                            btnOnPressed: () {
                              userInput += '+/-';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '%',
                            btnOnPressed: () {
                              userInput += '%';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '/',
                            btnColor: const Color(0xffffa00a),
                            btnOnPressed: () {
                              userInput += '/';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            btnText: '7',
                            btnOnPressed: () {
                              userInput += '7';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '8',
                            btnOnPressed: () {
                              userInput += '8';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '9',
                            btnOnPressed: () {
                              userInput += '9';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: 'x',
                            btnColor: const Color(0xffffa00a),
                            btnOnPressed: () {
                              userInput += 'x';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            btnText: '4',
                            btnOnPressed: () {
                              userInput += '4';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '5',
                            btnOnPressed: () {
                              userInput += '5';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '6',
                            btnOnPressed: () {
                              userInput += '6';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '-',
                            btnColor: const Color(0xffffa00a),
                            btnOnPressed: () {
                              userInput += '-';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            btnText: '1',
                            btnOnPressed: () {
                              userInput += '1';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '2',
                            btnOnPressed: () {
                              userInput += '2';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '3',
                            btnOnPressed: () {
                              userInput += '3';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '+',
                            btnColor: const Color(0xffffa00a),
                            btnOnPressed: () {
                              userInput += '+';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            btnText: '0',
                            btnOnPressed: () {
                              userInput += '0';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '.',
                            btnOnPressed: () {
                              userInput += '.';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: 'DEL',
                            btnOnPressed: () {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                              setState(() {});
                            },
                          ),
                          MyButton(
                            btnText: '=',
                            btnColor: const Color(0xffffa00a),
                            btnOnPressed: () {
                              onEqualPress();
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
