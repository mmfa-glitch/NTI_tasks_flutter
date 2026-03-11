import 'package:flutter/material.dart';

class HeaderPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [?Colors.indigo[200], ?Colors.indigo[800]],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),

        //let's see whether to set corner radius for this or the next element in the H.View

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Good day for shopping", style: TextStyle(color: Colors.white70),),
          const SizedBox(height: 4),
          const Text("User Name", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(hintText: "Search in Store",
              filled: true, fillColor: Colors.grey[300], prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}