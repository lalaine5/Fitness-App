import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Weekly Progress',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _ProgressItem(day: 'Monday', workouts: 2, calories: 350),
                  _ProgressItem(day: 'Tuesday', workouts: 1, calories: 200),
                  _ProgressItem(day: 'Wednesday', workouts: 3, calories: 450),
                  _ProgressItem(day: 'Thursday', workouts: 0, calories: 0),
                  _ProgressItem(day: 'Friday', workouts: 2, calories: 300),
                  _ProgressItem(day: 'Saturday', workouts: 1, calories: 150),
                  _ProgressItem(day: 'Sunday', workouts: 0, calories: 0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProgressItem extends StatelessWidget {
  final String day;
  final int workouts;
  final int calories;

  const _ProgressItem({
    required this.day,
    required this.workouts,
    required this.calories,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              day,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Icon(Icons.fitness_center, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text('$workouts'),
                const SizedBox(width: 16),
                Icon(
                  Icons.local_fire_department,
                  size: 16,
                  color: Colors.orange,
                ),
                const SizedBox(width: 4),
                Text('$calories kcal'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
