import 'package:flutter/material.dart';

class Userprofile extends StatelessWidget {

  Widget buildInput(String label, {bool multiline = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.indigo[800],),),

          const SizedBox(height: 6),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Row(
              children: [

                Expanded(
                  child: TextField(
                    maxLines: multiline ? 4 : 1,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),

                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.indigo[800],),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

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

              buildInput("User Name"),
              buildInput("Mobile Number"),
              buildInput("Address"),
              buildInput("Description", multiline: true),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}



