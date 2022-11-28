import 'dart:convert';

import 'package:fap_g6/store/components/product_tile.dart';
import 'package:fap_g6/store/product_item.dart';
import 'package:flutter/material.dart';
import 'package:fap_g6/store/item_prod.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emptyProduct = Product('','',0, 0,'');
  List<Product> cartProducts = [];

  @override
  void initState() {
    super.initState();
  }

  T? tryCast<T>(dynamic value, {T? fallback}) {
    try {
      return (value as T);
    } on TypeError catch (_) {
      return fallback;
    }
  }

  Future<List<Product>> getProducts() async {
    //Kinuha niya yung details from product_item.dart
    List<Product> products = Product.productList;
    return products;
  }

  /* Di ko pa mapagana hehe
  Future<List<Product>> getProducts() async {
    List<Product> products = [];
    final response = await http.get(Uri.parse('https://dummyjson.com/products'));
    Map<String,List> data = Map.castFrom(json.decode(response.body));
    List<Map<String,dynamic>> pd = List.castFrom(data['products']??[]);
    products = pd.map((e) => Product.fromJSON(Map.castFrom(e))).toList();
    return products;
  }
  */

  void addToCart(Product p){
    setState(() {
      cartProducts.add(p);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TigerHub Madness Store'),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
          backgroundColor: Colors.green,
          label: Text('Items: ${cartProducts.length}'),
          icon: const Icon(Icons.shopping_cart),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: const Text("Click on a product to add to your cart.")
          ),
          Expanded(
            child: FutureBuilder<List<Product>>(
                future: getProducts(),
                builder: (context,snapshot){
                  if (snapshot.hasData &&
                  snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) =>
                          ProductTile(item: snapshot.data![index], add: addToCart),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }
            ),
          ),
          //Container(child: Text("CHECKOUT NOW" + " Items in Your Cart: 1")),
        ],
      ),
    );
  }
}