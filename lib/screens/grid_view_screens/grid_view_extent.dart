import 'package:flutter/material.dart';


class GridViewExtent extends StatelessWidget {
  const GridViewExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview.extent'),
      ),
      body: GridView.extent(
          maxCrossAxisExtent: 10,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          padding: EdgeInsets.all(10.0),
          children: [
            Container(color: Colors.deepPurple,),
            Container(color: Colors.deepPurple,),
            Container(color: Colors.deepPurple,),
            Container(color: Colors.deepPurple,),
            Container(color: Colors.deepPurple,),
            Container(color: Colors.deepPurple,),
          ]
      ),
    );
  }
}