import 'package:fap_g6/store/components/const.dart';
import 'package:flutter/material.dart';

Widget Header({required String headerText }){
  return Row(
    children: [
      Image.asset(
        headerURL,
        fit: BoxFit.contain,
        height: 70,
        color: Colors.black,
      ),
      Text(headerText)
    ],

  );
}