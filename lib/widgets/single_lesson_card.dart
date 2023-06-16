import 'package:flutter/material.dart';

import '../global.dart';
import '../model/lesson_model.dart';

class SingleLessonCard extends StatelessWidget {
  final LessonModel lessonModel;
  const SingleLessonCard({
    super.key,
    required this.lessonModel,
  });

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Card(
      child: SizedBox(
        width: mq.width * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/babycare.png',
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lessonModel.category.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    lessonModel.title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${lessonModel.lessonTime} min',
                        style: commonHeadingText.copyWith(fontSize: 13),
                      ),
                      Icon(lessonModel.isLocked
                          ? Icons.lock_outlined
                          : Icons.lock_open_outlined)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
