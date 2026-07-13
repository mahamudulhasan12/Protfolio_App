import 'package:flutter/material.dart';
import 'package:portfolio_ui/home_page.dart';

class SpalisScreen extends StatefulWidget {
  const SpalisScreen({super.key});

  @override
  State<SpalisScreen> createState() => _SpalisScreenState();
}

class _SpalisScreenState extends State<SpalisScreen> {
  @override
  void initState() {
    toIcons();
    super.initState();
  }
  toIcons()async{
    await Future.delayed(Duration(seconds: 2)).then((value){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network("https://cdn-icons-png.flaticon.com/128/12304/12304404.png"),
      ),
    );
  }
}
