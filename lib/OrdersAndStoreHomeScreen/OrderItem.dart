import 'package:flutter/material.dart';

class Orderitem extends StatefulWidget
{
  Orderitem(this.productName, this.moreOnProduct, this.itemPrice, {super.key});
  String productName = 'NA';
  String moreOnProduct = 'NA';
  double itemPrice = 0;

  @override
  State<Orderitem> createState() => OrderitemState();
}
class OrderitemState extends State<Orderitem>
{
  //////////////////////////////////////////
  int itemCount = 0;
  void ItemCount(bool isIncrement)
  {
    if(isIncrement)
    {
      setState(() {
        itemCount++;
      });
    } else {
      setState(() {
        itemCount--;
        if(itemCount < 0) itemCount =0;
      });
    }
  }
  ////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      margin: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          //1
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('Assets/Images/aa.png', fit: BoxFit.cover, width: 70, height: 70,),
          ),
          const SizedBox(width: 10,),
          //2
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text(widget.productName, style: TextStyle(fontWeight: FontWeight.bold,),),
                  SizedBox(height: 5,),
                  Text(widget.moreOnProduct, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal,),),
                  SizedBox(height: 5,),
                  Text('LE ${widget.itemPrice}', style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold,),),
                ],
              ),
          ),
          //3
          Row(
            children: [
              GestureDetector(
                onTap: () { ItemCount(false);},
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.indigo[500],
                  ),
                  child: Icon(Icons.remove, color: Colors.white70, size: 15,),
                ),
              ),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                child: Text(itemCount.toString(), style: TextStyle(fontSize: 14),),
              ),

              GestureDetector(
                onTap: () { ItemCount(true);},
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.indigo[500],
                  ),
                  child: Icon(Icons.add, color: Colors.white70, size: 15,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
