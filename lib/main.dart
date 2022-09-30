import 'package:flutter_application_2/views/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyNewApp());
}

class MyNewApp extends StatelessWidget {
  const MyNewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Week3Page());
  }
}
