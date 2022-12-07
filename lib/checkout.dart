import 'package:flutter/material.dart';
import 'package:fap_g6/store/product_item.dart';
import 'package:fap_g6/store/components/product_tile.dart';
import 'package:fap_g6/home_page.dart';


class CheckoutPage extends StatefulWidget {
  final int total;
  const CheckoutPage({Key? key, required this.total}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  double total = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THM Order Confirmation'),
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
          Text("Total: Php. $total"),

        ],
      ),
    );
  }
}


