import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../global.dart';
import '../model/events_model.dart';

class SingleEventCard extends StatelessWidget {
  final EventModel eventModel;
  const SingleEventCard({
    super.key,
    required this.eventModel,
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
                    eventModel.type.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    eventModel.title,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('d MMM, EEEE').format(eventModel.dateAndDay),
                        style: commonHeadingText.copyWith(fontSize: 13),
                      ),
                      TextButton(
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            StadiumBorder(
                                side:
                                    BorderSide(width: 1, color: Colors.blue)),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Book'),
                      ),
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
