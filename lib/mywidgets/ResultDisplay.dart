import 'package:flutter/material.dart';

class Resultdisplay extends StatelessWidget {
  final String inputText;
  final String resultText;
  const Resultdisplay({
    super.key,
    required this.inputText,
    required this.resultText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffEBF1FD),
        border: Border.all(width: 2, color: Color(0xffD3DEF6)),
      ),

      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  inputText,
                  style: TextStyle(
                    color: Color(0xff354970),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        color: Color(0xff354970).withOpacity(0.2),
                        offset: Offset(-2, -2),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                resultText,
                style: TextStyle(
                  color: Color(0xff354970),
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      color: Color(0xff354970).withOpacity(0.2),
                      offset: Offset(-2, -2),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
