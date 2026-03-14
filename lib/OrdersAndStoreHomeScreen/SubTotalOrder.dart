import 'package:flutter/material.dart';
import 'package:flutter_review/InSessionTasks/WidgetsFile/App_CustomisedWidgets_V.dart';
class Subtotalorder extends StatelessWidget
{
  Subtotalorder({super.key});
  AppCustomisedwidgetsV acwv = new AppCustomisedwidgetsV();

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.indigo[900],
        borderRadius: BorderRadius.all(Radius.circular(20),),
      ),
      child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              acwv.SubTotalOrderRowText(label: 'product', totalValue: 200, ),
              acwv.SubTotalOrderRowText(label: 'product', totalValue: 300, ),
              acwv.SubTotalOrderRowText(label: 'product', totalValue: 400, ),
              acwv.SubTotalOrderRowText(label: 'product', totalValue: 100, ),

              Divider(color: Colors.white,),
              acwv.SubTotalOrderRowText(label: 'Total', totalValue: 200*5, isBold: true),

              SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.indigo[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                  ),
                  child: Text('Place My Order', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),),
                ),
              ),

            ],
          ),
      ),
    );

  }


}