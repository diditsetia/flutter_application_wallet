import 'package:flutter/material.dart';

class DuitinScreen extends StatefulWidget {
  const DuitinScreen({super.key});

  @override
  State<DuitinScreen> createState() => _DuitinScreenState();
}

class _DuitinScreenState extends State<DuitinScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: Center(child: Container(child: Text('Duitin Screen'))),
      ),
    );
  }
}
