import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview.builder max'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        padding: EdgeInsets.all(10.0),
        children: [
          Container(height: 20, width: 100,color: Colors.deepPurple,),
          Container(width: 40, height: 40,color: Colors.deepPurple,),
          Container(height: 60, width: 100,color: Colors.deepPurple,),
          Container(height: 70, width: 100,color: Colors.deepPurple,),
          Container(height: 80, width: 100,color: Colors.deepPurple,),
        ]
      ),
    );
  }
}
