import 'package:flutter/material.dart';

class AppCustomisedwidgetsV {

  //Text Field.
  Widget buildInput(String label, {bool isPassword=false, bool multiline = false, IconData icon= Icons.arrow_forward_ios, double vPadding=10}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: vPadding),
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
                    obscureText: isPassword,
                    maxLines: multiline ? 4 : 1,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),

                IconButton(
                  icon: Icon(icon, size: 16, color: Colors.indigo[800],),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget BuildArabicInput(String label, {bool isPassword=false, bool multiline = false, IconData icon= Icons.arrow_forward_ios, double vPadding=10}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: vPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.indigo[800],),),

          //const SizedBox(height: 6),

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
                    textAlign: TextAlign.right,
                    obscureText: isPassword,
                    maxLines: multiline ? 4 : 1,
                    decoration: InputDecoration(
                      labelText: label,
                      hintTextDirection: TextDirection.rtl,
                      border: InputBorder.none,
                    ),
                  ),
                ),

                IconButton(
                  icon: Icon(icon, size: 16, color: Colors.indigo[800],),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //Text(DATE).
  Widget buildOutput(String label, String output, void Function() dateSelect) {
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
                  child: Text(output),
                  ),
                IconButton(
                  icon: Icon(Icons.calendar_month_rounded, size: 18, color: Colors.indigo[800],),
                  onPressed: () {dateSelect();},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //Elevated Button Context Nav
  Widget CustomisedElevatedButtonContext(String text, BuildContext context, Widget destination){
    return Container(
      child: ElevatedButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => destination));
      },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo[700],
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          elevation: 5,
        ),
        child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white70,),),
      ),
    );
  }
  //Elevated Button Context Nav
  Widget CustomisedElevatedButtonFunction(String text, void Function() incomingFunction){
    return Container(
      child: ElevatedButton(onPressed: (){
        incomingFunction();
      },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo[700],
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          elevation: 5,
        ),
        child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white70,),),
      ),
    );
  }
  //Elevated Button Context Nav (Arabic)
  //TODO: pass a function parameter to be invoked onPressed
  Widget CustomisedArabicElevatedButtonContext(String text ,BuildContext context, Widget destination, {Color textColour=Colors.white, Color buttonColour=Colors.red}){
    return Container(
      child: ElevatedButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => destination));
      },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColour,
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 25),
          elevation: 5,
        ),
        child: Directionality(textDirection: TextDirection.rtl,
          child: Text(text,
            style: TextStyle(color: textColour,
              fontWeight: FontWeight.normal, fontSize: 25,
              letterSpacing: 10, wordSpacing: 5, ),),),
      ),
    );
  }
  //Arabic Text
  Widget ArabicText(String text , {Color textColour=Colors.white, double wordSize=25, TextAlign textAlign=TextAlign.center}){
    return Container(
      child: Directionality(textDirection: TextDirection.rtl,
        child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColour,
            fontWeight: FontWeight.normal, fontSize: wordSize,
            letterSpacing: 10, wordSpacing: 5, ),),),
    );
  }

  void TextingFunction(String msg, BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  ////SubTotalText
  Widget SubTotalOrderRowText({String label='', double totalValue=0, bool isBold=false}){
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.white, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),),
          Text('LE $totalValue', style: TextStyle(color: Colors.white, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),),
        ],
      ),
    );
  }
}