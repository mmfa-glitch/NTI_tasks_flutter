import 'package:flutter/material.dart';
import 'package:flutter_review/GTasks/EmptyScreen.dart';
import 'SignInUpMainScreen.dart';
class OnboardingscreenNextStep extends StatefulWidget {
  @override
  OnboardingscreenNextStepState createState() => OnboardingscreenNextStepState();
}

class OnboardingscreenNextStepState extends State<OnboardingscreenNextStep>
{
  int currentIndex =0;
  Widget intendedPage = Emptyscreen();
  Map<String, Widget> pageMap = {
    'signin':Emptyscreen(),
    'signup':Emptyscreen(),
    'home':Emptyscreen(),
    'notifications':Emptyscreen(),
    'appointments':Emptyscreen(),
    'profile':Emptyscreen(),
  };
  final List<Widget> pages = [
    Emptyscreen(),
    Emptyscreen(),
    Emptyscreen(),
    Emptyscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(

      bottomNavigationBar: Stack(
          children: [
            Container(
              height: 75,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [?Colors.red[300], ?Colors.red[800]],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,//indigo[900],
              selectedItemColor: Colors.amber[400],
              unselectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,

              currentIndex: currentIndex,
              onTap: (index) {
                setState(() => currentIndex = index);

              },

              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month_rounded), label: "Appointments"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
              ],
            ),]
      ),

      body: Signinupmainscreen(),
      //TODO: body:pages[currentIndex],
    );
  }
}
