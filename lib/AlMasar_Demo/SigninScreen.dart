import 'package:flutter/material.dart';
import 'package:flutter_review/GTasks/EmptyScreen.dart';
import 'package:flutter_review/InSessionTasks/WidgetsFile/App_CustomisedWidgets_V.dart';
import 'SignUpScreen.dart';

class SigninScreen extends StatelessWidget
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
              const SizedBox(height: 10,),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    //height: screenSize.height *0.4,
                    width:  screenSize.width,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(color: Colors.red[400], borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                    child: Column(children: [
                      const SizedBox(height: 10,),
                      acwv.ArabicText('أهلاً بك، نحن سعداء بعودتك \n من فضلك قم بتسجيل الدخول'),
                      const SizedBox(height: 20,),
                      acwv.BuildArabicInput('رقم الهاتف', icon: Icons.phone_rounded),
                      //const SizedBox(height: 20,),
                      acwv.BuildArabicInput('كلمة المرور', isPassword: true, icon: Icons.remove_red_eye_rounded),
                      Row(children: [
                        TextButton(onPressed: (){}, child: acwv.ArabicText('هل نسيت كلمة المرور؟', wordSize: 12)),
                      ],),
                      const SizedBox(height: 10,),
                      acwv.CustomisedArabicElevatedButtonContext('تسجيل الدخول', context, Emptyscreen(), buttonColour: Colors.white70, textColour: Colors.deepOrange[800]!),
                      const SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupScreen()));
                        }, child: acwv.ArabicText('إنشاء حساب.', wordSize: 12)),
                        acwv.ArabicText('ليس لديك حساب؟', wordSize: 12, textColour: Colors.black),
                      ],),
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