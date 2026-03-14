import 'package:flutter/material.dart';
import 'package:flutter_review/GTasks/EmptyScreen.dart';
import 'package:flutter_review/InSessionTasks/WidgetsFile/App_CustomisedWidgets_V.dart';
import 'SigninScreen.dart';
class SignupScreen extends StatelessWidget
{
  AppCustomisedwidgetsV acwv = new AppCustomisedwidgetsV();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset('Assets/Images/Bg2.png', fit: BoxFit.cover, height: screenSize.height*0.7, width:screenSize.width,),
          ),
          Column(
            children: [
              const SizedBox(height: 40,),
              Center(child: Image.asset('Assets/Images/logo.png', fit: BoxFit.cover, height: screenSize.height*0.2, width: screenSize.width * 0.8,),),
              const SizedBox(height: 10,),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    //height: screenSize.height *0.4,
                    width:  screenSize.width,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(color: Colors.red[400], borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 10,
                        children: [
                        //const SizedBox(height: 5,),
                        acwv.BuildArabicInput('الاسم الكامل', icon: Icons.drive_file_rename_outline, vPadding: 1),
                        acwv.BuildArabicInput('البريد الإلكتروني', icon: Icons.email_rounded, vPadding: 1),
                        acwv.BuildArabicInput('رقم الهاتف', icon: Icons.phone_rounded, vPadding: 1),
                        acwv.BuildArabicInput('كلمة المرور', isPassword: true, icon: Icons.remove_red_eye_rounded, vPadding: 1),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          acwv.ArabicText('أوافق على الشروط و الأحكام', wordSize: 12),
                          Checkbox(value: false, onChanged:null, focusColor: Colors.green,),
                        ],),
                        const SizedBox(height: 5,),
                        acwv.CustomisedArabicElevatedButtonContext('إنشاء حساب', context, Emptyscreen(), buttonColour: Colors.white70, textColour: Colors.deepOrange[800]!),
                        const SizedBox(height: 5,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SigninScreen()));
                            }, child: acwv.ArabicText('تسجيل الدخول.', wordSize: 12)),
                            acwv.ArabicText('لديك حساب؟', wordSize: 12, textColour: Colors.black),
                          ],),
                      ],),
                    ),

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