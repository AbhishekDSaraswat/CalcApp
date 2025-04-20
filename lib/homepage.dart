import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:project_application_1/mywidgets/MyButton.dart';
import 'package:project_application_1/mywidgets/resultDisplay.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String input = "343";
  String result = "55332";
  void inputHandle(String userInput) {
    // clear all input data
    if (userInput == "AC") {
      setState(() {
        input = "";
        result = "";
      });
    } else if (userInput == "=") {
      final finalInput = input.replaceAll("X", '*');
      Parser p = Parser();

      Expression exp = p.parse(finalInput);
      ContextModel contextModel = ContextModel();
      setState(() {
        result = exp.evaluate(EvaluationType.REAL, contextModel).toString();
      });
    } else {
      setState(() {
        input = input + userInput;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 15),
                  Resultdisplay(inputText: input, resultText: result),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Mybutton(
                        onTap: () {
                          inputHandle("AC");
                        },
                        btnText: "AC",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("-/+");
                        },
                        btnText: "-/+",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("%");
                        },
                        btnText: "%",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("/");
                        },
                        btnText: "/",
                        isFunBtn: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Mybutton(
                        onTap: () {
                          inputHandle("7");
                        },
                        btnText: "7",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("8");
                        },
                        btnText: "8",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("9");
                        },
                        btnText: "9",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("X");
                        },
                        btnText: "X",
                        isFunBtn: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Mybutton(
                        onTap: () {
                          inputHandle("4");
                        },
                        btnText: "4",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("5");
                        },
                        btnText: "5",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("6");
                        },
                        btnText: "6",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("-");
                        },
                        btnText: "-",
                        isFunBtn: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Mybutton(
                        onTap: () {
                          inputHandle("1");
                        },
                        btnText: "1",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("2");
                        },
                        btnText: "2",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("3");
                        },
                        btnText: "3",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("+");
                        },
                        btnText: "+",
                        isFunBtn: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Mybutton(
                        onTap: () {
                          inputHandle("0");
                        },
                        btnText: "0",
                      ),

                      Mybutton(
                        onTap: () {
                          inputHandle(",");
                        },
                        btnText: ",",
                      ),
                      Mybutton(
                        onTap: () {
                          inputHandle("=");
                        },
                        btnText: "=",
                        isFunBtn: true,
                        isEqualBtn: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
