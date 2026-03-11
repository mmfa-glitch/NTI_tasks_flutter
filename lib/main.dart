import 'package:flutter/material.dart';
import 'widget_screens.dart' as ws;
import 'package:flutter_review/GTasks/MainMenu.dart';
import 'package:flutter_review/GTasks/StoreHome.dart';
import 'package:flutter_review/InSessionTasks/UserProfile.dart';
import 'package:flutter_review/GTasks/PersonalProfile.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Review',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: StoreHome() //Userprofile() //Personalprofile() // StoreHome()//StoreHomeScreen(), //MainMenu()// MyHomePage(title: 'Whatever!!!'),
    );
  }
}




