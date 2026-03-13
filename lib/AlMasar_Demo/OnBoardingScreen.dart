import 'package:flutter/material.dart';
import 'package:flutter_review/GTasks/EmptyScreen.dart';
import 'OnboardingscreenNextStep.dart';
class Onboardingscreen extends StatefulWidget
{
  @override
  OnboardingscreenState createState() => OnboardingscreenState();
}
class OnboardingscreenState extends State<Onboardingscreen> with SingleTickerProviderStateMixin
{
  late AnimationController controller;
  late Animation<double> scalingAnimation;
  bool hideButtonText = false;

  @override
  void initState()
  {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    scalingAnimation = Tween<double>(begin: 1, end: 40).animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

    controller.addStatusListener((status)
    {
      if(status == AnimationStatus.completed)
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => OnboardingscreenNextStep()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
   final screenSize = MediaQuery.sizeOf(context);
   return Scaffold(
     body: Stack(
       children: [
         Positioned(
           child: Image.asset('Assets/Images/Bg.png', fit: BoxFit.cover, width: double.infinity,),
         ),
         Column(
           children: [
             const SizedBox(height: 40,),
             Center(child: Image.asset('Assets/Images/logo.png', fit: BoxFit.cover, width: screenSize.width * 0.8,),),
             const SizedBox(height: 40,),
             Padding(
               padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
               child: Directionality(textDirection: TextDirection.rtl,
                   child: Text("دعمٌ وتمكينٌ لمستقبلٍ \n أفضل لفئاتنا الخاصة",
                     style: TextStyle(color: Colors.redAccent[700],
                       fontWeight: FontWeight.normal, fontSize: 25,
                       letterSpacing: 10, wordSpacing: 5, ),),),
             ),
             const SizedBox(height: 300,),
             Align(
               alignment: Alignment.bottomCenter,
               child: AnimatedBuilder(animation: controller, builder: (context, child){
                 return Transform.scale(scale: scalingAnimation.value, child: child,);
               },
                 child: Container(
                     padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                     decoration: BoxDecoration(color: Colors.red[400], borderRadius: BorderRadius.circular(30)),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 0),
                       child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.transparent,
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                               minimumSize: Size(screenSize.width*0.6, 80)),
                           onPressed: (){
                             setState(() {
                               hideButtonText = true;
                             });
                             controller.forward();
                             },
                           child: Directionality(textDirection: TextDirection.rtl,
                             child: hideButtonText ?
                             const SizedBox() : Text("دعنا نبدأ",
                               style: TextStyle(color: Colors.white,
                                 fontWeight: FontWeight.bold, fontSize: 25,
                                 letterSpacing: 10, wordSpacing: 5, ),),),),
                     )),
               ),
             ),
           ],
         ),

       ]
     ),
   );
  }
}