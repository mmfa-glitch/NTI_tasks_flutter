import 'package:flutter/material.dart';
import 'package:flutter_review/OrdersAndStoreHomeScreen/OrderItem.dart';
import 'package:flutter_review/OrdersAndStoreHomeScreen/SubTotalOrder.dart';

class Inprogressproductsscreen extends StatelessWidget
{
  Inprogressproductsscreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              SizedBox(height: 15,),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20,),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Cart', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),),
                ),
              ),
              SizedBox(height: 15,),
              Expanded(
                child: ListView(
                  children: [
                    Orderitem('Product I', 'More on Product I', 200),
                    Orderitem('Product II', 'More on Product II', 300),
                    Orderitem('Product III', 'More on Product III', 400),
                    Orderitem('Product IV', 'More on Product IV', 100),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Subtotalorder(),
            ],
          ),

      ),
    );
  }
}