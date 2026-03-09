import 'package:flutter/material.dart';

class Userprofile extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profile', style: TextStyle(fontWeight: FontWeight.bold,),),centerTitle: true,),
      body: SafeArea(child: Column(
      children: [
        SizedBox(width: 25, height: 25,),
        Center(
            child: CircleAvatar(
              backgroundColor: Colors.indigo[75], radius: 75,
              foregroundImage: AssetImage('Assets/Images/aa.png',),
            ),
        ),
        SizedBox(width: 25, height: 25,),
        //first input
        Padding(padding: EdgeInsetsGeometry.fromLTRB(10, 10, 5, 0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child:  Text('User Name', textAlign: TextAlign.left,),
              ),
              SizedBox(width: 5, height: 5,),
              Row(
                spacing: 20,
                children: [
                Expanded(flex:4, child: TextField(),),
                  Expanded(flex:1, child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),),
              ],
              ),
            ],
          ),
        ),),
        //second input
        Padding(padding: EdgeInsetsGeometry.fromLTRB(10, 20, 5, 0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child:  Text('Mobile Number', textAlign: TextAlign.left,),
                ),
                SizedBox(width: 5, height: 5,),
                Row(
                  spacing: 20,
                  children: [
                    Expanded(flex:4, child: TextField(),),
                    Expanded(flex:1, child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),),
                  ],
                ),
              ],
            ),
          ),),
        //second input
        Padding(padding: EdgeInsetsGeometry.fromLTRB(10, 20, 5, 0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child:  Text('Address', textAlign: TextAlign.left,),
                ),
                SizedBox(width: 5, height: 5,),
                Row(
                  spacing: 20,
                  children: [
                    Expanded(flex:4, child: TextField(),),
                    Expanded(flex:1, child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),),
                  ],
                ),
              ],
            ),
          ),),

        //second input
        Padding(padding: EdgeInsetsGeometry.fromLTRB(10, 20, 5, 0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child:  Text('Description', textAlign: TextAlign.left,),
                ),
                SizedBox(width: 5, height: 5,),
                Row(
                  spacing: 20,
                  children: [
                    Expanded(flex:4, child: TextField(),),
                    Expanded(flex:1, child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),),
                  ],
                ),
              ],
            ),
          ),),
        ],)

      ),
    );
  }
}