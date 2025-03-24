import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../data/models/lecture_model.dart';

class LectureMeetingsWidget extends StatelessWidget {
  const LectureMeetingsWidget({super.key, required this.lecture, this.onTap});

  final Lecture lecture;
  final void Function(Timestamp  startTime)? onTap; // Modify onTap to accept DateTime

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 2,
      children: [
        // Meetings
        for (final meet in lecture.meetings) ...[
          // Format the startTime and endTime to show only date and time
          InkWell(
            onTap: meet.status != null ? null : () {
              if (onTap != null) {
                onTap!(meet.startTime); // Pass the startTime to onTap
              }
            },
            child: Chip(
              label: Text(
                '${meet.startTime.toDate().year}-${meet.startTime.toDate().month.toString().padLeft(2, '0')}-${meet.startTime.toDate().day.toString().padLeft(2, '0')}',
                style: const TextStyle(fontSize: 10),
              ),
              backgroundColor: getStatusColor(
                meet.status,
              ), // Set color based on status
            ),
          ),
        ],
      ],
    );
  }

  /// Returns a color based on the status of the meet.
  Color getStatusColor(String? status) {
    switch (status) {
      case 'present':
        return Colors.green.shade100; // Light green for present
      case 'absent':
        return Colors.red.shade100; // Light red for absent
      case 'late':
        return Colors.orange.shade100; // Light orange for late
      case 'excused':
        return Colors.blue.shade100; // Light blue for excused
      default:
        return Colors.grey.shade100; // Light grey for unknown status
    }
  }
}