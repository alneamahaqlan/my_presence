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
    return Card(
      elevation: 4, // Add shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade50, Colors.white], // Gradient background
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
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Chip(
                    label: Text(
                      role.trans(context),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(height: 8), // Spacing
              // Email
              Row(
                children: [
                  const Icon(Icons.email, size: 16, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
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
                        activityStatus == "active" ? Colors.green : Colors.red,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'الحالة: ${activityStatus == "active" ? "نشط" : "غير نشط"}',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 16), // Spacing
              // Edit and Delete Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.blue),
                    onPressed: onEdit,
                  ),
                  if (onDelete != null)
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
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
