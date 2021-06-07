import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesFilter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FilterPageState();
}

class _FilterPageState extends State<CoursesFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filter Page")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Filter porraa!'),
        ],
      ),
    );
  }
}
