import 'package:flutter/material.dart';
class Sectiontitle extends StatelessWidget{
  String? sectionTitle = '';
  double bottomPadding = 0;
  double topPadding = 5;

  bool showViewAllTextButton = false;
  late List <Widget> completeList = [
    Expanded(flex: 4, child: Text(sectionTitle!, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
    Expanded(flex: 1,child: TextButton(onPressed: (){}, child: Text('view all')),),
  ];
  late List <Widget> onlyTitleList = [
    Expanded(flex: 4, child: Text(sectionTitle!, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
  ];
  Sectiontitle(this.sectionTitle, this.bottomPadding, this.topPadding, {this.showViewAllTextButton=true});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.fromLTRB(20, topPadding, 20, bottomPadding),
      child: Container(
        child: Row(
          spacing: 20,
          children: showViewAllTextButton ? completeList : onlyTitleList,
        ),
      ),
    );
  }
}