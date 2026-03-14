import 'package:flutter/material.dart';
import 'package:flutter_review/AlMasar_Demo/OnboardingscreenNextStep.dart';
import 'package:flutter_review/GTasks/EmptyScreen.dart';
import 'widget_screens.dart' as ws;
import 'package:flutter_review/GTasks/MainMenu.dart';
import 'package:flutter_review/GTasks/StoreHome.dart';
import 'package:flutter_review/InSessionTasks/UserProfile.dart';
import 'package:flutter_review/GTasks/PersonalProfile.dart';
import 'package:flutter_review/AlMasar_Demo/OnboardingscreenNextStep.dart';
import 'package:flutter_review/AlMasar_Demo/Onboardingscreen.dart';
import 'package:flutter_review/OrdersAndStoreHomeScreen/OrdersScreen.dart';
import 'package:flutter_review/OrdersAndStoreHomeScreen/InProgressProductsScreen.dart';

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
      home: StoreHome(),

      //To check the following tasks, just replace home: value with one of the following.
      //StoreHome(), //Task I
      //Personalprofile(), //Task II
      //Ordersscreen(), //Task IV
      //P.s: all of the above are considered as part of a final app, so that one can navigate through all of them if (home: StoreHome(),)

      //The following one is Task III which is related to AlMasar Application.
      //Onboardingscreen(), //Task III


    );
  }
}




