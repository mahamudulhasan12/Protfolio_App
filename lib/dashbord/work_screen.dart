import 'package:flutter/material.dart';

class MyWorkScreen extends StatefulWidget {
  const MyWorkScreen({super.key});

  @override
  State<MyWorkScreen> createState() => _MyWorkScreenState();
}

class _MyWorkScreenState extends State<MyWorkScreen> {
  List Works = [
    {
      "title": "Flutter Framework",
      "subtitle": "Building cross-platform Android & iOS applications.",
    },
    {
      "title": "Dart Programming",
      "subtitle": "Writing clean, maintainable, and efficient code.",
    },
    {
      "title": "State Management",
      "subtitle": "Experience with GetX for scalable app architecture.",
    },
    {
      "title": "REST API",
      "subtitle": "Integrating APIs and handling JSON data.",
    },
    {
      "title": "Firebase",
      "subtitle": "Authentication, Firestore, and cloud services.",
    },
    {
      "title": "Responsive UI",
      "subtitle": "Creating adaptive layouts for multiple screen sizes.",
    },
    {
      "title": "Custom Widgets",
      "subtitle": "Developing reusable and maintainable UI components.",
    },
    {
      "title": "Navigation",
      "subtitle": "Managing routes and screen transitions effectively.",
    },
    {
      "title": "Git & GitHub",
      "subtitle": "Version control and collaborative development.",
    },
    {
      "title": "Debugging & Optimization",
      "subtitle": "Improving app performance and fixing issues.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_outlined)),
        title: Text("More Works",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: ListView.builder(
        padding: EdgeInsetsGeometry.all(8),
        itemCount: Works.length,
        itemBuilder: (BuildContext context , index){
          return Card(
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5,color: Colors.black),
              ),
              alignment:Alignment.center,
              child: ListTile(
                title: Text("${Works[index]["title"]}",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),),
                subtitle: Text("${Works[index]["subtitle"]}",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),),
              ),
            ),
          );
        },
      ),
    );
  }
}
