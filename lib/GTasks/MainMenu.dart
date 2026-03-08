import 'package:flutter/material.dart';
import 'package:flutter_review/widget_screens.dart' as ws;

class MainMenu extends StatelessWidget
{
  final List<Map<String, Object>> widgetList = [
    {'name': 'Indexed Stack', 'builder': (BuildContext context) => ws.IndexedStackScreen()},
    {'name': 'Stack Positioned', 'builder': (BuildContext context) => ws.StackPositionedScreen()},
    {'name': 'Physical Model', 'builder': (BuildContext context) => ws.PhysicalModelScreen()},
    {'name': 'Safe Area', 'builder': (BuildContext context) => ws.SafeAreaScreen()},
    {'name': 'Gesture Detector', 'builder': (BuildContext context) => ws.GestureDetectorScreen()},
    {'name': 'Interactive Viewer', 'builder': (BuildContext context) => ws.InteractiveViewerScreen()},
    {'name': 'Animated List', 'builder': (BuildContext context) => ws.AnimatedListScreen()},
    {'name': 'Animated Switcher', 'builder': (BuildContext context) => ws.AnimatedSwitcherScreen()},
    {'name': 'Sliver App Bar', 'builder': (BuildContext context) => ws.SliverAppBarScreen()},
    {'name': 'Sliver Persistent Header', 'builder': (BuildContext context) => ws.SliverPersistentHeaderScreen()},
    {'name': 'Constrained Box', 'builder': (BuildContext context) => ws.ConstrainedBoxScreen()},
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('Flutter Task', style: TextStyle(color: Colors.white60, fontSize: 25, fontStyle: FontStyle.italic),),
          centerTitle: true, backgroundColor: Colors.blueGrey, ),

        body: ListView.builder(
            padding: EdgeInsets.all(20),

            itemCount: widgetList.length,
            itemBuilder: (context, index){
              final item = widgetList[index];
              return
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    minVerticalPadding: 5,
                    shape: BeveledRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15), side: BorderSide(color: Colors.black87)),
                    title: Text(item['name'] as String),
                    tileColor: Colors.amberAccent,
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => (item['builder'] as WidgetBuilder) (context)));},
                  ),
                );
            })
    );
  }
}