
import 'package:flutter/material.dart';
import '../product_item.dart';

Widget ProductTile({required Product item}){
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    leading: AspectRatio(
        aspectRatio: 1,
        child: Image.network(item.url)),
    title: Text(item.itemName),
    subtitle: Text(item.itemPrice.toString()),
  );
}