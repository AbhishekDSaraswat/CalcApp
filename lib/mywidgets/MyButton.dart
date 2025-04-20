import 'package:flutter/material.dart';
import 'package:project_application_1/colors.dart';

class Mybutton extends StatelessWidget {
  final String btnText;
  final bool isFunBtn;
  final bool isEqualBtn;
  final VoidCallback onTap;
  const Mybutton({
    super.key,
    required this.btnText,
    this.isFunBtn = false,
    this.isEqualBtn = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        width: isEqualBtn ? 175 : 80,
        height: 80,
        decoration: BoxDecoration(
          color: isFunBtn ? orangecolor : btnBgColor,
          borderRadius: BorderRadius.circular(25),
        ),

        child: Center(
          child: Text(
            btnText,
            style: TextStyle(
              color: isFunBtn ? Colors.white : Color(0xff354970),
              fontSize: 35,
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
      ),
    );
  }
}
