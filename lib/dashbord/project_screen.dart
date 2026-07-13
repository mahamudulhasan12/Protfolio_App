import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjectScreen extends StatefulWidget {
  const MyProjectScreen({super.key});

  @override
  State<MyProjectScreen> createState() => _MyProjectScreenState();
}

class _MyProjectScreenState extends State<MyProjectScreen> {
  List Project_1 = [
    {
      "image":
          "https://media.licdn.com/dms/image/v2/D5622AQGDUiFoU-Nldw/feedshare-shrink_1280/B56Z9BfcFhGQAM-/0/1783510188625?e=1785369600&v=beta&t=JDf-7Ze3GWmdsoAzyvISJdS80GAfYXtQnQ4hRlTMxko",
    },
    {
      "image":
          "https://media.licdn.com/dms/image/v2/D5622AQGs64KWO1ciEw/feedshare-shrink_1280/B56Z9BfcHMG0AQ-/0/1783510188857?e=1785369600&v=beta&t=tKa1u-va1ItoXGgJpbEHGjNOUyrFL9KqlCZqlGBCy6Q",
    },
    {
      "image":
          "https://media.licdn.com/dms/image/v2/D5622AQH_94BMS7mYzw/feedshare-shrink_1280/B56Z9BfcGXG4AM-/0/1783510188690?e=1785369600&v=beta&t=MHSlBydFhAhSwH5ksZQezrYYJt-jKqsSO8fw4sUxu4s",
    },
  ];
  List Project_2 = [
    {
      "image":
          "https://media.licdn.com/dms/image/v2/D5622AQHY50urz1K_JQ/feedshare-shrink_1280/B56Z88xF77KcAM-/0/1783430930445?e=1785369600&v=beta&t=AcH_OhqZrWDMDPVdquqsK9UDD29wFiQEKn4b4FbXPfo",
    },
    {
      "image":
          "https://media.licdn.com/dms/image/v2/D5622AQH5CEKKZZGShw/feedshare-shrink_1280/B56Z88xGAcIMAM-/0/1783430930761?e=1785369600&v=beta&t=SWlvfjaRBLZ6ssM6yclDcAqLinBSGTjilMx3MgHwkyY",
    },
    {
      "image":
          "https://media.licdn.com/dms/image/v2/D5622AQE5h1YyJJsANg/feedshare-shrink_1280/B56Z88xF.0GsAM-/0/1783430930600?e=1785369600&v=beta&t=B8E_FxQP2jh7O6mPycTZ_szEJp2EhNGP3XJz6tFcu0M",
    },
    {
      "image":
          "https://media.licdn.com/dms/image/v2/D5622AQH0_3AC__Xdqg/feedshare-shrink_1280/B56Z88xGBlG8AQ-/0/1783430930770?e=1785369600&v=beta&t=SvNTOm0K702w_yk8VSal2xI8DA9WRo4QqppRVuMk0pM",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
        toolbarHeight: 30,
        title: Text(
          "Project Overview",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        // padding: EdgeInsetsGeometry.all(10),
        children: [
          SizedBox(height: 20,),
          SizedBox(
            height: 250,
            child: GridView.builder(
              itemCount: Project_1.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 15,
                mainAxisExtent: 300,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    height: 150,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // border: Border.all(width: 0.5,color: Colors.black)
                    ),
                    child: Image.network(
                      height: 100,
                      width: double.infinity,

                      "${Project_1[index]["image"]}",
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Wrap(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri.parse(
                      "https://github.com/mahamudulhasan12/E-commerce_app",
                    );
                    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 12),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.tealAccent,
                    elevation: 5,
                    minimumSize: Size(140, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "E-commearce",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 250,
            child: GridView.builder(
              itemCount: Project_2.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 15,
                mainAxisExtent: 300,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // border: Border.all(width: 0.5,color: Colors.black)
                    ),
                    child: Image.network(
                      height: 50,
                      width: 150,

                      "${Project_2[index]["image"]}",
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Wrap(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri.parse(
                      "https://github.com/mahamudulhasan12/e-wallet/tree/main",
                    );
                    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 12),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.tealAccent,
                    elevation: 5,
                    minimumSize: Size(120, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "E-wallet",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
