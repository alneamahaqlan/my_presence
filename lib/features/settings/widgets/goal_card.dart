import 'package:flutter/material.dart';

class GoalCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double currentAmount;
  final double targetAmount;
  final double progress;
  final IconData icon;
  const GoalCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.currentAmount,
    required this.targetAmount,
    required this.progress,
    required this.icon,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A2C38),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 24),
              const SizedBox(width: 8),
              Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              const Spacer(),
              Text("\$$targetAmount",
                  style:
                      const TextStyle(color: Colors.tealAccent, fontSize: 16)),
            ],
          ),
          const SizedBox(height: 4),
          Text(subtitle,
              style: const TextStyle(color: Colors.white70, fontSize: 14)),
          const SizedBox(height: 8),
          Text("\$$currentAmount",
              style: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Slider(
            value: progress,
            onChanged: (val) {},
            activeColor: Colors.teal,
            inactiveColor: Colors.white24,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text("${(progress * 100).toInt()}%",
                style: const TextStyle(color: Colors.tealAccent, fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
