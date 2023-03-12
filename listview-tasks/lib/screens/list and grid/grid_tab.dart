import 'package:flutter/material.dart';

class GridTab extends StatelessWidget {
  const GridTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => GridTile(
        footer: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(alignment: Alignment.center,
            child: Text('Person $index')),
        ),
        child: const Icon(Icons.person),
      ),
    );
  }
}
