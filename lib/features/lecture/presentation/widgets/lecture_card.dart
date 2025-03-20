import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting

import '../../data/models/lecture_model.dart';

class LectureCard extends StatelessWidget {
  final Lecture lecture;

  const LectureCard({super.key, required this.lecture});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Add shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade50,
              Colors.blue.shade100,
            ], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12), // Match card's border radius
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Subject and User
              Text(
                'الماده: ${lecture.subject.name}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'عضو التدريس: ${lecture.user.name}',
                style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
              ),
              const SizedBox(height: 12),

              // Day
              Row(
                children: [
                  const Icon(
                    Icons.calendar_today,
                    size: 16,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'اليوم: ${_formatDay(lecture.startTime.toDate())}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Start and End Time
              Row(
                children: [
                  const Icon(Icons.schedule, size: 16, color: Colors.blueGrey),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'من ${_formatTime(lecture.startTime.toDate())} إلى ${_formatTime(lecture.endTime.toDate())}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Hall
              Row(
                children: [
                  const Icon(Icons.place, size: 16, color: Colors.blueGrey),
                  const SizedBox(width: 8),
                  Text(
                    'القاعه: ${lecture.hall}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to format time (e.g., 02:30 PM)
  String _formatTime(DateTime date) {
    return DateFormat('hh:mm a', 'ar').format(date);
  }

  // Helper method to format day (e.g., Monday)
  String _formatDay(DateTime date) {
    return DateFormat('EEEE', 'ar').format(date); // Format: يوم الاثنين
  }
}
