import 'package:flutter/material.dart';
import 'package:flutter_review/GTasks/HeaderPart.dart';
import 'package:flutter_review/GTasks/PopularCategories.dart';
import 'package:flutter_review/GTasks/FeaturedProducts.dart';
import 'package:flutter_review/GTasks/PopularProducts.dart';
import 'package:flutter_review/GTasks/SectionTitle.dart';
import 'package:flutter_review/GTasks/EmptyScreen.dart';
import 'package:flutter_review/GTasks/StoreHome.dart';
import 'package:flutter_review/GTasks/StoreHomeScreen.dart';
import 'package:flutter_review/GTasks/CarouselSection.dart';
import 'package:flutter_review/InSessionTasks/UserProfile.dart';

class Personalprofile extends StatelessWidget{
  const Personalprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white70),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Userprofile()));
            },
            icon: Icon(Icons.settings_rounded,),
            tooltip: 'Settings',

          )
        ],
      ),
      drawer: NavigationDrawer(backgroundColor: Colors.indigo[50], children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              NDHeaderBuilder(context),
              NDMenuBuilder(context),
            ],
          ),
        ),
      ]),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.indigo[50],
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('Assets/Images/aa.png'),
              ),
              SizedBox(height: 25,),
              Text('User Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.indigo[800]),),
              SizedBox(height: 10,),
              Text('profession', style: TextStyle(color: Colors.grey[800], fontStyle: FontStyle.italic),),
              SizedBox(height: 150,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Userprofile()));
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo[700],
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  elevation: 5,
                ),
                child: Text('Edit Information', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white70,),),
              ),

            ],
          ),
        ),
      ),
    );
  }


  //methods
  Widget NDHeaderBuilder(BuildContext context){
    return Material(
      color: Colors.indigo[400],
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Userprofile()));
        },
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: 15
          ),
          child: Column(
            children: [
              SizedBox(height: 15,),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('Assets/Images/aa.png'),
              ),
              SizedBox(height: 15,),
              Text('User Name', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),),
              Text('profession', style: TextStyle(color: Colors.white70, fontStyle: FontStyle.italic),)
            ],
          ),
        ),
      ),
    );
  }
  Widget NDMenuBuilder(BuildContext context){
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text("Home", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo[800]),),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => StoreHome()));
              },
          ),
        ],
      ),
    );
  }

}