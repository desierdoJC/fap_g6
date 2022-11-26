import 'package:flutter/material.dart';

class MyItem extends StatelessWidget {
  final int index;

  const MyItem(this.index);

  @override
  Widget build(BuildContext context) {
    final color = Colors.primaries[index % Colors.primaries.length];
    final hexRgb = color.shade500.toString().substring(10, 16).toUpperCase();
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      leading: AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: color,
          )),
      title: Text('${index + 1}'),
      subtitle: Text('#$hexRgb'),
    );
  }
}