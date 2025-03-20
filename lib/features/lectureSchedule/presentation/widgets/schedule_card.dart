import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting
import '../../data/models/schedule_model.dart';
import 'package:easy_localization/easy_localization.dart';

class ScheduleCard extends StatelessWidget {
  final Schedule schedule;

  const ScheduleCard({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6, // Increased shadow for depth
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // More rounded corners
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.blue.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                schedule.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
              const SizedBox(height: 8),

              // Term Dates
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 20, color: Colors.white),
                  const SizedBox(width: 8),
                  Text(
                    '${_formatDate(schedule.termStart.toDate())} - ${_formatDate(schedule.termEnd.toDate())}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Lectures List
              if (schedule.lectures.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'lectures'.tr(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...schedule.lectures.map((lecture) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            const Icon(Icons.book, size: 16, color: Colors.white70),
                            const SizedBox(width: 8),
                            Text(
                              lecture.id,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ],
                ),
              const SizedBox(height: 12),

              // Created At and Updated At (if available)
              if (schedule.createdAt != null || schedule.updatedAt != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(color: Colors.white70),
                    if (schedule.createdAt != null)
                      Text(
                        '${'created_at'.tr()}: ${_formatDate(schedule.createdAt!.toDate())}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    if (schedule.updatedAt != null)
                      Text(
                        '${'updated_at'.tr()}: ${_formatDate(schedule.updatedAt!.toDate())}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
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

  // Helper method to format dates
  String _formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy', 'ar').format(date); // Arabic formatting
  }
}