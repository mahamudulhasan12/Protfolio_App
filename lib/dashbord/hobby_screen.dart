import 'package:flutter/material.dart';

class MyHobyScreen extends StatefulWidget {
  const MyHobyScreen({super.key});

  @override
  State<MyHobyScreen> createState() => _MyHobyScreenState();
}

class _MyHobyScreenState extends State<MyHobyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hobby"),
      ),
    );
  }
}
