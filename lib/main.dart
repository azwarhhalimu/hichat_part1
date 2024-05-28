import 'package:flutter/material.dart';
import 'package:hichat/pages/MainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      title: "Hichat",
      routes: {
        MainPage.routeName: (context) => MainPage(),
      },
    );
  }
}
