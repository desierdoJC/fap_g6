import 'package:flutter/material.dart';
import 'package:fap_g6/store/product_item.dart';
import 'package:fap_g6/store/components/product_tile.dart';
import 'package:fap_g6/home_page.dart';


class OrderConPage extends StatefulWidget {
  final List<Product> cartItems;
  const OrderConPage({Key? key, required this.cartItems}) : super(key: key);

  @override
  State<OrderConPage> createState() => _OrderConPageState();
}

class _OrderConPageState extends State<OrderConPage> {
  double total = 0.0;

  @override
  void initState(){
    super.initState();
    for(Product p in widget.cartItems){
      total += p.itemPrice;
    }
  }

  void removeItem(Product p, int index){
    total -= p.itemPrice;
    widget.cartItems.removeAt(index);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TigerHub Madness Store'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
        },
        backgroundColor: Colors.green,
        label: const Text('Continue to Checkout'),
        icon: const Icon(Icons.shopping_cart),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: const Text("Please review your order before confirming.")
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) =>
                  ProductTile(item: widget.cartItems[index],deleteIndex: index, delete: removeItem),
            ),
          ),
          Text("Total: Php. $total"),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: const Text('Back to Store'),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}


