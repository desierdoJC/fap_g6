
import 'package:flutter/material.dart';
import '../product_item.dart';

const kProdTileMargin = 3.0;
const kProdTileBorderRadius = 7.0;
const kProdTileActiveColor = Colors.blueAccent;
const kProdTileInactiveColor = Colors.grey;

Widget ProductTile({required Product item}){
  return Container(
    margin: const EdgeInsets.all(kProdTileMargin),
    decoration: BoxDecoration(
        color: stockCheckColor(item.itemStock),
        borderRadius: BorderRadius.circular(kProdTileBorderRadius),
    ),
    child: ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      leading: AspectRatio(
          aspectRatio: 1,
          child: Image.network(item.url)),
      title: Text(item.itemName),
      subtitle: Text(item.itemPrice.toString() + "\nIn Stock: " + item.itemStock.toString()),
      trailing: GestureDetector(
         // onTap: , Add to Cart
        child: Text("Add To Cart",
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),)
      ),
    ),
  );
}


//Pag wala na stock, grey bg
stockCheckColor(int stock){
  if(stock < 1) {
    Color c = kProdTileInactiveColor;
    return c;
  }
  else{
    Color c = kProdTileActiveColor;
    return c;
  }
}

