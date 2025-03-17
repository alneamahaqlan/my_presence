import 'package:flutter/material.dart';

class TransactionCardWidget extends StatelessWidget {
  final String title;
  final double amount;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const TransactionCardWidget({
    super.key,
    required this.title,
    required this.amount,
    required this.onDelete,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black87,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(
          title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "\$${amount.toStringAsFixed(2)}",
              style: const TextStyle(
                  color: Colors.teal, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.teal),
              onPressed: onEdit,
            ),
          ],
        ),
      ),
    );
  }
}
