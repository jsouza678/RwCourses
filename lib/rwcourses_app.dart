import 'package:flutter/material.dart';
import 'package:rwcourses/strings.dart';
import 'package:rwcourses/ui/courses/courses_page.dart';
import 'package:rwcourses/ui/courses/filter/courses_filter.dart';

class RWCoursesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CoursesFilter()),
            ),
          ),
        ],
      ),
      body: CoursesPage(),
    );
  }
}
