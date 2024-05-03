import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University Management Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Management Dashboard'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Overview Section
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Overview',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                DashboardCard(
                  title: 'Total Faculty Members',
                  value: '100',
                  color: Colors.orange,
                ),
                DashboardCard(
                  title: 'Total Courses',
                  value: '50',
                  color: Colors.blue,
                ),
                DashboardCard(
                  title: 'Total Students',
                  value: '5000',
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 20),
            // Faculty Management Section
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Faculty Management',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Add more sections for course management, student management, etc.
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const DashboardCard({
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(fontSize: 24, color: color),
            ),
          ],
        ),
      ),
    );
  }
}
