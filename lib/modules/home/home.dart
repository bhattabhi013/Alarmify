import 'package:alarmify/modules/alarms/createAlarm.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    AlertDialog alert = AlertDialog(
      actions: [
        // First button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateAlarmScreen()),
                );
              },
              child: Text('Set Alarm'),
            ),
            OutlinedButton(
              child: Text("Set Reminder"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ],
    );
    return Scaffold(
      body: Container(), //destination screen
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return alert;
            },
          );
        },
        child: const Icon(Icons.add),
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
