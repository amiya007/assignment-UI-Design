import 'package:assignment/model/program_model.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class SingleProgramCard extends StatelessWidget {
  final ProgramModel programModel;
  const SingleProgramCard({
    super.key,
    required this.programModel,
  });

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Card(
      child: SizedBox(
        width: mq.width * 0.63,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/lifestyle.png',
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    programModel.type.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    programModel.title,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${programModel.totalLesson} Lessons',
                    style: commonHeadingText.copyWith(fontSize: 13),
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
