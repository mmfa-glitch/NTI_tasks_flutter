import 'package:flutter/material.dart';
import 'package:flutter_review/InSessionTasks/WidgetsFile/App_CustomisedWidgets_V.dart' as wb;
import 'package:flutter_review/GTasks/PickDate.dart';

class Userprofile extends StatelessWidget {

  wb.AppCustomisedwidgetsV widgetsBuilder = new wb.AppCustomisedwidgetsV();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: SafeArea(

        child: SingleChildScrollView(

          child: Column(
            children: [

              const SizedBox(height: 20),

              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(color: Colors.indigo[300], 
                borderRadius: BorderRadiusGeometry.circular(60)),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage: const AssetImage('Assets/Images/aa.png'),
                  child: Container(
                    height: 120,
                    width: 120,

                    alignment: Alignment(1,-1),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadiusGeometry.circular(20),
                      color: Colors.indigoAccent[100]),
                      alignment: Alignment.center,
                      //color: Colors.indigoAccent,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.edit,color: Colors.white, size: 15,)),
                    ),
                  )),
              ),


              const SizedBox(height: 30),

              widgetsBuilder.buildInput("User Name"),
              widgetsBuilder.buildInput("Mobile Number"),
              widgetsBuilder.buildInput("Address"),
              widgetsBuilder.buildInput("Description", multiline: true),
              widgetsBuilder.buildInput('Whatever this section is!!'),
              PickDate(),
              const SizedBox(height: 50),
              widgetsBuilder.CustomisedElevatedButtonFunction("Save", ()=> widgetsBuilder.TextingFunction('Saved',context))
            ],
          ),
        ),
      ),
    );
  }
}



