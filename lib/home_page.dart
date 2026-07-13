import 'package:flutter/material.dart';

import 'package:portfolio_ui/dashbord/education_screen.dart';
import 'package:portfolio_ui/dashbord/hobby_screen.dart';
import 'package:portfolio_ui/dashbord/profile_screen.dart';
import 'package:portfolio_ui/dashbord/project_screen.dart';
import 'package:portfolio_ui/dashbord/skill_screen.dart';
import 'package:portfolio_ui/dashbord/work_screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(

            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                  color: Colors.blue.shade300,
                  ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Image.network(
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                        "https://cdn-icons-png.flaticon.com/128/12304/12304404.png",
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("Developer Portfolio",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,color: Colors.black
                  ),),
                  SizedBox(height: 10),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          Card(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadowColor: Colors.grey,
                            color: Colors.orange.shade50,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));
                              },
                              // splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Image.network(
                                        height: 50,
                                        width: 50,
                                        "https://cdn-icons-png.flaticon.com/128/1077/1077114.png"
                                    ),
                                    Text("Profile",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ),
                            ),

                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.orange.shade50,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWorkScreen()));
                              },

                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                        height: 50,
                                        width: 50,
                                        "https://cdn-icons-png.flaticon.com/128/12969/12969657.png"
                                    ),
                                    Text("Work",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.orange.shade50,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MySkillScreen()));
                              },
                              // splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    Image.network(
                                        height: 50,
                                        width: 50,
                                        "https://cdn-icons-png.flaticon.com/128/9583/9583761.png"
                                    ),
                                    Text("Skill",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.orange.shade50,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyEducationScreen()));
                              },
                              // splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    Image.network(
                                        height: 50,
                                        width: 50,
                                        "https://cdn-icons-png.flaticon.com/128/1940/1940611.png"
                                    ),

                                    Text("Education",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.orange.shade50,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHobyScreen()));
                              },
                              // splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    Image.network(
                                        height: 50,
                                        width: 50,
                                        "https://cdn-icons-png.flaticon.com/128/13351/13351041.png"
                                    ),
                                    Text("Hobby",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.orange.shade50,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProjectScreen()));
                               },

                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      height: 50,
                                      width: 50,
                                      "https://cdn-icons-png.flaticon.com/128/5956/5956597.png"
                                    ),
                                    Text("Project OverView",style: TextStyle(
                                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
