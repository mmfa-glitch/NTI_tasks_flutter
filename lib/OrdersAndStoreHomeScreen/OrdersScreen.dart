import 'package:flutter/material.dart';
import 'package:flutter_review/GTasks/EmptyScreen.dart';
import 'package:flutter_review/OrdersAndStoreHomeScreen/InProgressProductsScreen.dart';
class Ordersscreen extends StatelessWidget
{
  Ordersscreen({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[500],
          foregroundColor: Colors.white,
          title: Text('Orders', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2,),),
          bottom: TabBar(tabs: [
            Tab(text: 'In Progress', icon: Icon(Icons.incomplete_circle_rounded),),
            Tab(text: 'Completed',icon: Icon(Icons.circle),),
            Tab(text: 'Cancelled',icon: Icon(Icons.cancel_rounded),),
          ],
            indicatorColor: Colors.black,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
          ),
        ),
        body: TabBarView(children: [
          Inprogressproductsscreen(),
          Emptyscreen(),
          Emptyscreen(),
        ]),
      ),
    );
  }
}