import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rwcourses/model/course.dart';
import 'package:rwcourses/ui/courses/course_detail/image_container.dart';
import 'package:rwcourses/utils/string_extensions.dart';

class CourseDetailPage extends StatelessWidget {
  final Course course;

  CourseDetailPage({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildBanner(),
          _buildMain(context),
          _buildDetails(context),
        ],
      ),
    );
  }

  Widget _buildBanner() {
    return ImageContainer(height: 200, url: course.cardArtworkUrl);
  }

  Widget _buildMain(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            course.name,
            style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 24),
          ),
          Text(
            course.description,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  Widget _buildDetails(BuildContext context) {
    final style = TextStyle(fontSize: 16.0);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Domain(s): ${course.domainsString}",
            style: style,
          ),
          Text(
            "Level: ${course.difficulty.capitalize()}",
            style: style,
          ),
        ],
      ),
    );
  }
}
