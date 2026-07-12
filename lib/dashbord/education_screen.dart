import 'package:flutter/material.dart';

class MyEducationScreen extends StatefulWidget {
  const MyEducationScreen({super.key});

  @override
  State<MyEducationScreen> createState() => _MyEducationScreenState();
}

class _MyEducationScreenState extends State<MyEducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
      ),
    );
  }
}
