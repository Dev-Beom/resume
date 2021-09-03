import 'package:flutter/material.dart';
import 'package:resume/views/template/dot.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  Size? screenSize;

  @override
  Widget build(BuildContext context) {
  Widget buildName() {
    double? width = screenSize?.width;
    double? fontSize = width! * 0.03;
    double? dotSize = width * 0.01;
    return Row(
      children: [
        Text(
          "Lee Young Beom",
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.normal,
          ),
        ),
        Dot(size: dotSize),
      ],
    );
  }
  }
}
