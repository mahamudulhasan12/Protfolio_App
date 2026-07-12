import 'package:flutter/material.dart';

class MyConnectScreen extends StatefulWidget {
  const MyConnectScreen({super.key});

  @override
  State<MyConnectScreen> createState() => _MyConnectScreenState();
}

class _MyConnectScreenState extends State<MyConnectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Connection"),
      ),
    );
  }
}
