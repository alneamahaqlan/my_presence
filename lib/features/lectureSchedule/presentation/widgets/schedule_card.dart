import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../data/models/schedule_model.dart';

class ScheduleCard extends StatelessWidget {
  final Schedule schedule;

  const ScheduleCard({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          // Add onTap functionality if needed
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                colorScheme.primary.withOpacity(0.8),
                colorScheme.primary.withOpacity(0.6),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with title and level
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      schedule.title,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.secondary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'المستوى ${schedule.level}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Term dates
              _buildInfoRow(
                context,
                icon: Icons.calendar_month_outlined,
                text:
                    '${_formatDate(schedule.termStart.toDate())} - ${_formatDate(schedule.termEnd.toDate())}',
              ),
              const SizedBox(height: 8),

              // Division
              _buildInfoRow(
                context,
                icon: Icons.group_outlined,
                text: schedule.division,
              ),
              const SizedBox(height: 12),

              // Department
              _buildInfoRow(
                context,
                icon: Icons.school_outlined,
                text: schedule.department.name,
              ),
              const SizedBox(height: 16),

              // Lectures section
              if (schedule.lectures.isNotEmpty) ...[
                Text(
                  'lectures'.tr(),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children:
                      schedule.lectures.map((lecture) {
                        return Chip(
                          label: Text(
                            lecture.subject.name,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onPrimary,
                            ),
                          ),
                          backgroundColor: colorScheme.primary.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          visualDensity: VisualDensity.compact,
                        );
                      }).toList(),
                ),
                const SizedBox(height: 12),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    BuildContext context, {
    required IconData icon,
    required String text,
  }) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: theme.colorScheme.onPrimary.withOpacity(0.8),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateInfo(
    BuildContext context, {
    required IconData icon,
    required DateTime date,
    required String label,
  }) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: theme.colorScheme.onPrimary.withOpacity(0.6),
        ),
        const SizedBox(width: 4),
        Text(
          '$label: ${_formatDate(date)}',
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(0.7),
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy', 'ar').format(date);
  }
}
