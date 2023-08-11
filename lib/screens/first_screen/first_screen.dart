import 'package:flutter/material.dart';
import 'package:new_project/screens/grid_view_screens/grid_view_builder_max.dart';
import 'package:new_project/screens/grid_view_screens/grid_view_count.dart';
import 'package:new_project/screens/grid_view_screens/grid_view_extent.dart';

import '../grid_view_screens/grid_view_custom.dart';
import '../grid_view_screens/page_view.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButtonWidget(
                  text: 'Gridview.builder max',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GridViewBuilderMax()));
                  }),
              TextButtonWidget(text: 'Gridview.count', onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GridViewCount()));}),
              TextButtonWidget(text: 'Gridview.extent', onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridViewExtent()));
              }),
              TextButtonWidget(text: 'Gridview.custom', onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridViewCustom()));
              }),
              TextButtonWidget(text: 'Pageview.builder', onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PageViewScreen()));
              })
            ],
          ),
        ),
      ),
      appBar: AppBar(),
      body: GridView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 20,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 20.0,
          childAspectRatio: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(color: Colors.green, width: 200,);
        }
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const TextButtonWidget(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple),
      ),
    );
  }
}
