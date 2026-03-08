import 'package:flutter/material.dart';


///////////////////////
//GestureDetectorScreen
///////////////////////
class GestureDetectorScreen extends StatelessWidget {
  GestureDetectorScreen({Key? key}) : super(key: key);
  String? outputWord;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture Detector')),
      body: Center(
        child: GestureDetector(
          onTap: () => print('Tapped'),
          onDoubleTap: () => print('Double tapped'),
          onLongPress: () => print('Long pressed'),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(child: Text('Interact with me')),
          ),
        ),
      ),
    );
  }
}

/////////////////////////
//InteractiveViewerScreen
/////////////////////////
class InteractiveViewerScreen extends StatelessWidget {
  InteractiveViewerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interactive Viewer')),
      body: Center(
        child: InteractiveViewer(
          minScale: 0.5,
          maxScale: 4.0,

          boundaryMargin: EdgeInsets.all(30),
          child: Image.asset('Assets/Images/aa.png', fit: BoxFit.cover, width: double.infinity,),
        ),
      ),
    );
  }
}

///////////////////////
//AnimatedListScreen
///////////////////////
class AnimatedListScreen extends StatefulWidget {
  AnimatedListScreen({Key? key}) : super(key: key);

  @override
  AnimatedListScreenState createState() => AnimatedListScreenState();
}
class AnimatedListScreenState extends State<AnimatedListScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _items = ['Item 0', 'Item 1', 'Item 2'];

  void _addItem() {
    final newIndex = _items.length;
    _items.add('Item $newIndex');
    _listKey.currentState!.insertItem(newIndex);
  }

  void _removeItem(int index) {
    final removedItem = _items.removeAt(index);
    _listKey.currentState!.removeItem(
      index,
          (context, animation) => _buildItem(removedItem, animation),
    );
  }

  Widget _buildItem(String item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      axis: Axis.vertical,
      axisAlignment: -1,
      child: ListTile(
        title: Text(item),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => _removeItem(_items.indexOf(item)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated List')),
      body: Column(
        children: [
          ElevatedButton(onPressed: _addItem, child: Text('Add Item')),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _items.length,
              itemBuilder: (context, index, animation) {
                return _buildItem(_items[index], animation);
              },
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////
//AnimatedSwitcherScreen
////////////////////////
class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({Key? key}) : super(key: key);

  @override
  AnimatedSwitcherScreenState createState() => AnimatedSwitcherScreenState();
}

class AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  bool _isFirst = true;

  Widget _getChild() {
    return Container(
      key: ValueKey(_isFirst),
      width: 200,
      height: 200,
      color: _isFirst ? Colors.green : Colors.orange,
      child: Center(child: Text(_isFirst ? 'First' : 'Second')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Switcher')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 1000),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: _getChild(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => setState(() => _isFirst = !_isFirst),
              child: Text('Switch'),
            ),
          ],
        ),
      ),
    );
  }
}


////////////////////////
//SliverAppBarScreen
////////////////////////
class SliverAppBarScreen extends StatelessWidget {
  const SliverAppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            stretch: true,
            //pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver App Bar'),
              background: Image.asset('Assets/Images/aa.png', fit: BoxFit.cover, width: double.infinity,),
              stretchModes: <StretchMode> [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text('Item $index')),
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}


//////////////////////////////
//SliverPersistentHeaderScreen
//////////////////////////////
class SliverPersistentHeaderScreen extends StatelessWidget {
  const SliverPersistentHeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliver Persistent Header')),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverHeaderDelegate(
              minHeight: 60,
              maxHeight: 150,
              child: Container(color: Colors.blue, child: Center(child: Text('Header'))),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverHeaderDelegate({required this.minHeight, required this.maxHeight, required this.child});

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverHeaderDelegate old) {
    return minHeight != old.minHeight || maxHeight != old.maxHeight || child != old.child;
  }
}

//////////////////////////////
//SliverPersistentHeaderScreen
//////////////////////////////
class SafeAreaScreen extends StatelessWidget {
  const SafeAreaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Safe Area')),
      body: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: EdgeInsets.all(16.0),
        child: Container(
          color: Colors.amber,
          child: Center(child: Text('Safe Area')),
        ),
      ),
    );
  }
}

//////////////////////////////
//PhysicalModelScreen
//////////////////////////////
class PhysicalModelScreen extends StatelessWidget {
  const PhysicalModelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Physical Model')),
      body: Center(
        child: PhysicalModel(
          color: Colors.blue,
          elevation: 10.0,
          shadowColor: Colors.amberAccent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Center(child: Text('Physical Model')),
          ),
        ),
      ),
    );
  }
}

//////////////////////////////
//ConstrainedBoxScreen
//////////////////////////////
class ConstrainedBoxScreen extends StatelessWidget {
  const ConstrainedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Constrained Box')),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            maxWidth: 300,
            minHeight: 100,
            maxHeight: 300,
          ),
          child: Container(
            color: Colors.teal,
            width: double.infinity,
            height: double.infinity,
            child: Center(child: Text('Constrained Box')),
          ),
        ),
      ),
    );
  }
}
//////////////////////////////
//PhysicalModelScreen
//////////////////////////////
class StackPositionedScreen extends StatelessWidget {
  const StackPositionedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack & Positioned')),
      body: Center(
        child: Stack(

          children: [
            Container(width: 300, height: 300, color: Colors.grey[300]),
            Positioned(
              left: 20,
              top: 20,
              child: Container(width: 100, height: 100, color: Colors.red),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
//////////////////////////////
//PhysicalModelScreen
//////////////////////////////
class IndexedStackScreen extends StatefulWidget {
  const IndexedStackScreen({Key? key}) : super(key: key);

  @override
  IndexedStackScreenState createState() => IndexedStackScreenState();
}

class IndexedStackScreenState extends State<IndexedStackScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Indexed Stack')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 25,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 25,
              children: [
                ElevatedButton(onPressed: () => setState(() => _currentIndex = 0), child: Text('Show Red')),
                ElevatedButton(onPressed: () => setState(() => _currentIndex = 1), child: Text('Show Green')),
                ElevatedButton(onPressed: () => setState(() => _currentIndex = 2), child: Text('Show Blue')),
              ],
            ),
            Container(
              width: 200,
              height: 200,
              child: IndexedStack(
                index: _currentIndex,
                children: [
                  Container(color: Colors.red, child: Center(child: Text('Red'))),
                  Container(color: Colors.green, child: Center(child: Text('Green'))),
                  Container(color: Colors.blue, child: Center(child: Text('Blue'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




