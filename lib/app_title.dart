import 'package:flutter/material.dart';



Widget Header({required String headerImagePath, required String headerText }){
  return Row(
    children: [
      Image.asset(
        headerImagePath,
        fit: BoxFit.contain,
        height: 70,
      ),
      Container(
          padding: const EdgeInsets.all(8.0), child: Text(headerText))
    ],

  );
}