import 'package:flutter/material.dart';

class MyEducationScreen extends StatefulWidget {
  const MyEducationScreen({super.key});

  @override
  State<MyEducationScreen> createState() => _MyEducationScreenState();
}

class _MyEducationScreenState extends State<MyEducationScreen> {
  List<Map<String, String>> education = [
    {
      "title": "Secondary School Certificate (SSC)",
      "subtitle":
      "I completed my Secondary School Certificate (SSC) from Taraganj W/E Government Model High School in 2023 with an outstanding GPA of 5.00. During this period, I developed a strong academic foundation and enhanced my interest in computer science and technology.",
    },
    {
      "title": "Diploma in Computer Science & Technology",
      "subtitle":
      "I am currently pursuing a Diploma in Computer Science and Technology at Dinajpur Polytechnic Institute. My studies focus on programming, software development, databases, networking, operating systems, and mobile application development while continuously improving my practical skills through Flutter projects.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_outlined)),
        toolbarHeight: 30,
        title: Text("Education",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

        ),),
      ),
      body: ListView(
        children: [

          SizedBox(height: 20,),
          SizedBox(
            height: 600,
            child: ListView.builder(
              padding: EdgeInsetsGeometry.all(5),
              shrinkWrap: false,
              physics: NeverScrollableScrollPhysics(),
              itemCount: education.length,
              itemBuilder: (context, index) {
                final skill = education[index];

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
                                fontSize: 15,
                                color: Colors.black,
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
            ),
          )
        ],
      ),
    );
  }
}
