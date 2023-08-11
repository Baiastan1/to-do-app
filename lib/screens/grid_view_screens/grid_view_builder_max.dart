import 'package:flutter/material.dart';

class GridViewBuilderMax extends StatelessWidget {
  const GridViewBuilderMax({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview.builder max'),

      ),
      body: GridView.builder(

          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 10,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20
          ),
          itemBuilder: (context, index){
            return Container(
              color: Colors.deepPurple,
            );
          }),
    );
  }
}
