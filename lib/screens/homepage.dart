import 'package:flutter/material.dart';

import '../global.dart';
import '../model/program_model.dart';
import '../model/events_model.dart';
import '../model/lesson_model.dart';
import '../widgets/single_event_card.dart';
import '../widgets/single_lesson_card.dart';
import '../widgets/single_program_card.dart';
import '../widgets/hompage_button_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: const Color(0xFFEEF3FD), // Background color #EEF3FD
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Hello, Priya!',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'What do you wanna learn today?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: commonButtonStyle,
                      onPressed: () {},
                      child: const TextButtonChildWithImage(
                        image: AssetImage('assets/programs.png'),
                        text: 'Programs',
                      ),
                    ),
                    TextButton(
                      style: commonButtonStyle,
                      onPressed: () {},
                      child: const TextButtonChildWithImage(
                        image: AssetImage('assets/help.png'),
                        text: 'Get help',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: commonButtonStyle,
                      onPressed: () {},
                      child: const TextButtonChildWithImage(
                        image: AssetImage('assets/learn.png'),
                        text: 'Learn',
                      ),
                    ),
                    TextButton(
                      style: commonButtonStyle,
                      onPressed: () {},
                      child: const TextButtonChildWithImage(
                        image: AssetImage('assets/ddtracker.png'),
                        text: 'DD Tracker',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            height: mq.height * 0.45,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Programs for you',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'View all ',
                            style: commonHeadingText,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 20,
                            color: Color(0xFF6D747A),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: programDummyData
                        .map((e) => SingleProgramCard(programModel: e))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),

          //

          //

          //
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            height: mq.height * 0.45,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Events and experiences',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'View all ',
                            style: commonHeadingText,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 20,
                            color: Color(0xFF6D747A),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: eventDummyData
                        .map((e) => SingleEventCard(eventModel: e))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
          //

          //

          //

          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            height: mq.height * 0.45,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Lessons for you',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'View all ',
                            style: commonHeadingText,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 20,
                            color: Color(0xFF6D747A),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: lessonDummyData
                        .map((e) => SingleLessonCard(lessonModel: e))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
