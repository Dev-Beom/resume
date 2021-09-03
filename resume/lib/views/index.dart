import 'package:flutter/material.dart';
import 'package:resume/views/layout/detail.dart';
import 'package:resume/views/layout/summary.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Summary(),
          Detail(),
        ],
      ),
    );
  }
}
