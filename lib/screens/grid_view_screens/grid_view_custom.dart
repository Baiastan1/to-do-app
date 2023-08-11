import 'package:flutter/material.dart';

class GridViewCustom extends StatelessWidget {
  const GridViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.custom'),
      ),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
        ),
        childrenDelegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            color: Colors.deepPurple,
          );
        }),
      ),
    );
  }
}
