import 'package:flutter/material.dart';

import 'nxet.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final controllerOne = TextEditingController();
  final controllerTwo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task Page')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(height: 25),

            TextField(
              controller: controllerOne,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Your Name',
              ),
            ),
            SizedBox(height: 25),
            TextField(
              controller: controllerTwo,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                print(' ${controllerOne.text}');
                setState(() {
                  controllerTwo.text = controllerOne.text;
                });
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage(value: controllerOne.text),
                  ),
                );
              },
              child: Text('Navigate'),
            ),
          ],
        ),
      ),
    );
  }
}