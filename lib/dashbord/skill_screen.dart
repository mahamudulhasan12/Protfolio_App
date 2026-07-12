import 'package:flutter/material.dart';

class MySkillScreen extends StatefulWidget {
  const MySkillScreen({super.key});

  @override
  State<MySkillScreen> createState() => _MySkillScreenState();
}

class _MySkillScreenState extends State<MySkillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Skill"),
    );
  }
}
