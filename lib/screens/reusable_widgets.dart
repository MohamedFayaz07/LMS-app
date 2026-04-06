import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  AppButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class AssignmentCard extends StatelessWidget {
  final String title;
  final String status;

  AssignmentCard({required this.title, required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.assignment),
        title: Text(title),
        subtitle: Text("Status: $status"),
        trailing: Icon(
          status == "Submitted" ? Icons.check_circle : Icons.pending,
          color: status == "Submitted" ? Colors.green : Colors.orange,
        ),
      ),
    );
  }
}