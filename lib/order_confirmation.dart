import 'package:flutter/material.dart';
import 'package:fap_g6/store/product_item.dart';
import 'package:fap_g6/store/components/product_tile.dart';
import 'package:fap_g6/home_page.dart';



class OrderConPage extends StatelessWidget {

  OrderConPage({required this.cartItems});

 final List<Product> cartItems;
 final double total = 0;

  Future<List<Product>> getCartItems() async {
    //Kinuha niya yung details from product_item.dart
    return cartItems;
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
        label: Text('Checkout Now'),
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
            child: FutureBuilder<List<Product>>(
                future: getCartItems(),
                builder: (context,snapshot){
                  if (snapshot.hasData &&
                      snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) =>
                          ProductTile(item: snapshot.data![index]),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }
            ),
          ),
          Text("Total:"),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text('Back to Store'),
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

