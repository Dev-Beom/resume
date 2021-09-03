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
    screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          color: Color(0xff151515),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildName(),
              SizedBox(
                height: 10,
              ),
              buildPosision(),
              SizedBox(
                height: 20,
              ),
              buildSummary(),
              SizedBox(
                height: 50,
              ),
              buildInfo(),
            ],
          ),
        ),
      ),
    );
  }

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

  Widget buildPosision() {
    double? width = screenSize?.width;
    double? fontSize = width! * 0.015;
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Text(
          "Back-end Developer",
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget buildSummary() {
    double? width = screenSize?.width;
    double? fontSize = width! * 0.010;
    return Container(
      child: Text(
        "서버사이드의 기술에 관심이 많은 개발자 이영범입니다.",
        style: TextStyle(
          color: Colors.white30,
          fontSize: fontSize,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget buildInfo() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          infoTitle("Address"),
          infoContents("서울특별시 동작구"),
          SizedBox(
            height: 20,
          ),
          infoTitle("Phone"),
          infoContents("010-5409-8847"),
          SizedBox(
            height: 20,
          ),
          infoTitle("Email"),
          infoContents("youngbeom0908@gmail.com"),
          SizedBox(
            height: 20,
          ),
          infoTitle("Website"),
          infoContents("lisoft.tistory.com"),
          SizedBox(
            height: 20,
          ),
          infoTitle("GitHub"),
          infoContents("Dev-Beom"),
        ],
      ),
    );
  }

  Widget infoTitle(text) {
    double? width = screenSize?.width;
    double? fontSize = width! * 0.013;
    return Text(
      text.toString().toUpperCase(),
      style: TextStyle(
        color: Colors.green,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget infoContents(text) {
    double? width = screenSize?.width;
    double? fontSize = width! * 0.010;
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
