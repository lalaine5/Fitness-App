import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workouts = [
      {'name': 'Push-ups', 'duration': '10 min', 'calories': '50 kcal'},
      {'name': 'Running', 'duration': '30 min', 'calories': '300 kcal'},
      {'name': 'Squats', 'duration': '15 min', 'calories': '100 kcal'},
      {'name': 'Plank', 'duration': '5 min', 'calories': '30 kcal'},
      {'name': 'Cycling', 'duration': '45 min', 'calories': '400 kcal'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Workouts')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final workout = workouts[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.fitness_center, color: Colors.white),
              ),
              title: Text(workout['name']!),
              subtitle: Text('${workout['duration']} • ${workout['calories']}'),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Started ${workout['name']}')),
                  );
                },
                child: const Text('Start'),
              ),
            ),
          );
        },
      ),
    );
  }
}
