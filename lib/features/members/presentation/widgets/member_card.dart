import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_presence/core/extensions/string_extensions.dart';

class MemberCard extends StatelessWidget {
  final String name;
  final String email;
  final String role;
  final String activityStatus;
  final VoidCallback? onDelete;
  final VoidCallback onEdit;

  const MemberCard({
    super.key,
    required this.name,
    required this.email,
    required this.role,
    required this.activityStatus,
    this.onDelete,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    // Get the current theme
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Card(
      elevation: 4, // Add shadow
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Rounded corners
        side: BorderSide(
          color: colorScheme.primary.withOpacity(
            0.2,
          ), // Use primary color with opacity
          width: 1, // Border width
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorScheme.primary.withOpacity(
                0.1,
              ), // Use primary color with opacity
              colorScheme.surface, // Use surface color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(
            16,
          ), // Match card's rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name and Role
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary, // Use primary color
                    ),
                  ),
                  Chip(
                    label: Text(
                      role.trans(context),
                      style: TextStyle(
                        fontSize: 12,
                        color: colorScheme.onPrimary, // Use onPrimary color
                      ),
                    ),
                    backgroundColor: colorScheme.primary, // Use primary color
                  ),
                ],
              ),
              const SizedBox(height: 8), // Spacing
              // Email
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 16,
                    color: colorScheme.onSurface.withOpacity(0.6),
                  ), // Use onSurface color with opacity
                  const SizedBox(width: 8),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: 14,
                      color: colorScheme.onSurface.withOpacity(
                        0.6,
                      ), // Use onSurface color with opacity
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8), // Spacing
              // Status
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 12,
                    color:
                        activityStatus == "active"
                            ? Colors.green
                            : Colors
                                .red, // Keep as is (or use theme colors if needed)
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'الحالة: ${activityStatus.tr()}',
                    style: TextStyle(
                      fontSize: 14,
                      color: colorScheme.onSurface.withOpacity(
                        0.6,
                      ), // Use onSurface color with opacity
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16), // Spacing
              // Edit and Delete Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: colorScheme.primary, // Use primary color
                    ),
                    onPressed: onEdit,
                  ),
                  if (onDelete != null)
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: colorScheme.error, // Use error color
                      ),
                      onPressed: onDelete,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
