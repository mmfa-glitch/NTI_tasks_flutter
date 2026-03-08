import 'package:flutter/material.dart';
import 'package:flutter_review/widget_screens.dart' as ws;

//////////////////////////////////////////////////////
//The following is related to the in-session practice.
//////////////////////////////////////////////////////
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter+=10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[BottomNavigationBarItem(icon: Icon(Icons.home), label: "hjg"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "hjg")]),
        body: Stack(
          children: [
            Image.asset('Assets/Images/aa.png', fit: BoxFit.cover, width: double.infinity,),
            Align(alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                child:Container(
                  width: 600,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blueGrey),
                  child: Column(
                    spacing: 20,
                    mainAxisAlignment: .center,
                    children: [
                      Text("HHHHHH", style: TextStyle(color: Colors.white60, fontSize: 40,),),
                      ElevatedButton(onPressed: (){}, child: Text("Sign In"), style: ElevatedButton.styleFrom(fixedSize: Size(200, 50),),),
                      ElevatedButton(onPressed: (){}, child: Text("Sign Up"), style: ElevatedButton.styleFrom(fixedSize: Size(200, 50),),)

                    ],

                  ),
                ),

              ),
            ),

          ],
        )
    );

  }
}