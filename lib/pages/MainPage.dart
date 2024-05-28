import 'package:flutter/material.dart';
import 'package:hichat/pages/MainPage/body.dart';

class MainPage extends StatefulWidget {
  static String routeName = "/";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, dynamic>> menu = [
    {
      "title": "Chat",
      "icon": Icon(Icons.chat),
    },
    {
      "title": "Teman",
      "icon": Icon(Icons.person_2),
    },
    {
      "title": "Moment",
      "icon": Icon(Icons.camera_enhance),
    },
    {
      "title": "Profil",
      "icon": Icon(Icons.person),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 51, 132, 54),
        title: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "HiChat",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Mencari jodoh lebih mudah dan syarah",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.contact_phone,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 60,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color.fromARGB(255, 188, 188, 188),
          selectedItemColor: Colors.green,
          unselectedLabelStyle:
              TextStyle(color: const Color.fromARGB(255, 120, 120, 120)),
          items: menu.map((e) {
            return BottomNavigationBarItem(icon: e['icon'], label: e['title']);
          }).toList(),
        ),
      ),
    );
  }
}
