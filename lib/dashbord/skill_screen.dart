import 'package:flutter/material.dart';

class MySkillScreen extends StatefulWidget {
  const MySkillScreen({super.key});

  @override
  State<MySkillScreen> createState() => _MySkillScreenState();
}

class _MySkillScreenState extends State<MySkillScreen> {
  List<Map<String, String>> Skill = [
    {
      "title": "Python",
      "subtitle": "Strong understanding of Python programming, including problem-solving and object-oriented programming concepts.",
    },
    {
      "title": "Java",
      "subtitle": "Knowledge of core Java, OOP principles, and console-based application development.",
    },
    {
      "title": "Data Structures & Algorithms (DSA)",
      "subtitle": "Understanding of fundamental data structures, algorithms, and logical problem-solving techniques.",
    },
    {
      "title": "Operating Systems",
      "subtitle": "Comfortable working with Windows and Ubuntu Linux environments for development and system operations.",
    },
    {
      "title": "Microsoft Office",
      "subtitle": "Proficient in Microsoft Word, Excel, PowerPoint, and other office productivity tools.",
    },
    {
      "title": "Git & GitHub",
      "subtitle": "Experienced with version control, Git workflows, branching, and repository management using GitHub.",
    },
    {
      "title": "Dart Programming",
      "subtitle": "Developing efficient and maintainable applications using the Dart programming language.",
    },
    {
      "title": "Flutter Framework",
      "subtitle": "Building responsive, cross-platform mobile applications with clean UI and modern development practices.",
    },
    {
      "title": "Problem Solving",
      "subtitle": "Passionate about solving programming challenges through logical thinking and efficient algorithms.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_outlined)),
        toolbarHeight: 30,
        title: Text("More Skill",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

        ),),
      ),
      body: ListView.builder(
        padding: EdgeInsetsGeometry.only(left: 10,right: 10,top: 40),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: Skill.length,
        itemBuilder: (context, index) {
          final skill = Skill[index];

          return Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.grey.shade300,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.15),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.code,
                    color: Colors.blue,
                    size: 28,
                  ),
                ),
                SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        skill["title"]!,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        skill["subtitle"]!,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )
    );
  }
}
