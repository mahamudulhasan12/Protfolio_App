import 'package:flutter/material.dart';

class MyHobyScreen extends StatefulWidget {
  const MyHobyScreen({super.key});

  @override
  State<MyHobyScreen> createState() => _MyHobyScreenState();
}

class _MyHobyScreenState extends State<MyHobyScreen> {
  List<Map<String, String>> hobby = [
    {
      "image": "https://cdn-icons-png.flaticon.com/128/7991/7991055.png",
      "title": "Software Engineering",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/867/867482.png",
      "title": "Football",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/2160/2160153.png",
      "title": "Cricket",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/8815/8815660.png",
      "title": "Badminton",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/2409/2409387.png",
      "title": "Programming Contests",
    },
    {
      "image":"https://cdn-icons-png.flaticon.com/128/10/10952.png",
      "title":"Traveling"
    },
    {
      "image":"https://cdn-icons-png.flaticon.com/128/808/808439.png",
      'title':"Gaming"
    },
    {
      "image":"https://cdn-icons-png.flaticon.com/128/8669/8669669.png",
      'title':"Explore"
    },


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_outlined)),
        toolbarHeight: 30,
        title: Text("Hobby",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

        ),),
      ),
      body: GridView.builder(
        itemCount: hobby.length,
        padding: EdgeInsetsGeometry.only(left: 10,right: 10,top: 30),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 150,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemBuilder: (context , index){
          return Card(
            child: Container(
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.15),
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    height: 60,
                      width: 70,
                      "${hobby[index]["image"]}"
                  ),
                  Text("${hobby[index]['title']}",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
