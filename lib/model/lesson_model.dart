import 'dart:convert';
import 'dart:developer';

import '../global.dart';
import 'package:http/http.dart' as http;

class LessonModel {
  String title;
  String category;
  int lessonTime;
  bool isLocked;
  LessonModel(
      {required this.category,
      required this.title,
      required this.lessonTime,
      required this.isLocked});
}

getLessonData() async {
  // Make the API request
  http.Response response = await http.get(Uri.parse(lessonApiUrl));

  // Check if the request was successful (status code 200)
  if (response.statusCode == 200) {
    // Parse the response body
    Map<String, dynamic> responseData = jsonDecode(response.body);

    List<dynamic> items = responseData['items'];

    // Create a list to store ProgramModel objects
    List<LessonModel> fetchedData = [];

    // Iterate through the response data and create ProgramModel objects
    for (var item in items) {
      String title = item['name'];
      String category = item['category'];
      int lessonTime = int.parse(item['duration'].toString());
      bool isLocked = item['locked'];

      LessonModel program = LessonModel(
        title: title,
        category: category,
        lessonTime: lessonTime,
        isLocked: isLocked,
      );

      fetchedData.add(program);
    }
    for (var program in fetchedData) {
      print('Title: ${program.title}');
      print('Category: ${program.category}');
      print('Total Lessons: ${program.lessonTime}');
      print('---------------------------');
    }
    return fetchedData;

    // Print the programData list
  } else {
    log('Failed to fetch data. Status code: ${response.statusCode}');
  }
}
