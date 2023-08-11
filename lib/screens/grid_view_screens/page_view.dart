import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page view'),
      ),
      body: PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return Container(
            color: position % 2 == 0 ? Colors.pink : Colors.cyan,
          );
        },
      ),
    );
  }
}
