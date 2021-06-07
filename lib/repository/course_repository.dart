import 'package:rwcourses/constants.dart';
import 'package:rwcourses/model/course.dart';
import 'package:rwcourses/repository/repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CourseRepository implements Repository {
  String dataUrl =
      "https://api.raywenderlich.com/api/contents?filter[content_types][]=collection";

  @override
  Future<List<Course>> getCourses(int domainFilter) async {
    var courses = <Course>[];
    var url = dataUrl;

    if (domainFilter != Constants.allFilter) {
      url += "&filter[domain_ids][]=$domainFilter";
    }

    http.Response response = await http.get(
        url); //.then((value) => null).catchError(onError).whenComplete(() => null)
    final apiResponse = json.decode(response.body);

    print(apiResponse);
    apiResponse["data"].map((json) {
      courses.add(Course.fromJson(json));
    }).toList();

    return courses;
  }
}
