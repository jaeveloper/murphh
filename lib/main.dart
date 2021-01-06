import 'package:flutter/material.dart';
import 'package:murphh/home.dart';
import 'package:murphh/task.dart';

void main() => runApp(Murphh());

class Murphh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Murphh',
      debugShowCheckedModeBanner: false,
      home: Task(),
      
    );
  }
}