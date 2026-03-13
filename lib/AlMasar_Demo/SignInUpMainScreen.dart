import 'package:flutter/material.dart';
import 'package:flutter_review/GTasks/EmptyScreen.dart';
import 'package:flutter_review/InSessionTasks/WidgetsFile/App_CustomisedWidgets_V.dart';
import 'SigninScreen.dart';
import 'SignUpScreen.dart';

class Signinupmainscreen extends StatelessWidget
{
  AppCustomisedwidgetsV acwv = new AppCustomisedwidgetsV();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset('Assets/Images/Bg2.png', fit: BoxFit.cover, width: double.infinity,),
          ),
          Column(
            children: [
              const SizedBox(height: 40,),
              Center(child: Image.asset('Assets/Images/logo.png', fit: BoxFit.cover, width: screenSize.width * 0.8,),),
              const SizedBox(height: 40,),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      //height: screenSize.height *0.4,
                      width:  screenSize.width,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(color: Colors.red[400], borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                      child: Column(children: [
                          const SizedBox(height: 20,),
                          acwv.ArabicText('أهلاً بك في مؤسسة المسار \n للفئات الخاصة'),
                          const SizedBox(height: 80,),
                          acwv.CustomisedArabicElevatedButtonContext('سجل الدخول', context, SigninScreen(), buttonColour: Colors.white70, textColour: Colors.deepOrange[800]!),
                          const SizedBox(height: 20,),
                          acwv.CustomisedArabicElevatedButtonContext('إنشاء حساب', context, SignupScreen(), buttonColour: Colors.white70, textColour: Colors.deepOrange[800]!),
                        ],),

                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}