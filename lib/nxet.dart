import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key, this.value});
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Center(child: Text(value ?? ' ')),
    );
  }
}