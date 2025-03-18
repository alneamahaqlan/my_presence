import 'package:flutter/material.dart';

import '../../data/models/schedule_model.dart';

class LectureScheduleDetailPage extends StatelessWidget {
  final Schedule schedule;

  const LectureScheduleDetailPage({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lecture Schedule Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('Subject: ${schedule.subject.name}'),
            // Text('Date: ${schedule.date?.toDate().toString()}'),
          ],
        ),
      ),
    );
  }
}
