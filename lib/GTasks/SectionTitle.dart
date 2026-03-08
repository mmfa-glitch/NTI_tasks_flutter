import 'package:flutter/material.dart';
class Sectiontitle extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
      child: Container(
        child: Row(
          spacing: 20,
          children: [
            Expanded(flex: 4, child: Text('Popular Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
            Expanded(flex: 1,child: TextButton(onPressed: (){}, child: Text('view all'))),
          ],
        ),
      ),
    );
  }
}