import 'package:flutter/material.dart';
import 'package:fap_g6/app_title.dart';
import 'package:fap_g6/store/product_item.dart';
import 'package:fap_g6/store/components/product_tile.dart';
import 'package:fap_g6/home_page.dart';
import 'package:qr_flutter/qr_flutter.dart';


class CheckoutPage extends StatefulWidget {

  final double total;
  final List<Product> orderItems;
  const CheckoutPage({Key? key, required this.total, required this.orderItems}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}


class _CheckoutPageState extends State<CheckoutPage> {

  //Order Confirmed, Remove Stock for Each Item
  // Tinetest ko pa lang HAHA
  @override
  void initState(){
    super.initState();
    for(Product p in widget.orderItems){
      print('Item: '+ p.itemName.toString());
      print('Stock Before: ' + p.itemStock.toString());
      p.itemStock--;
      print('Stock After: ' + p.itemStock.toString());

    }
  }

  String createOrderList(){
    StringBuffer orderList = StringBuffer();
    orderList.writeAll(widget.orderItems, '\n');

    return orderList.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Header(headerImagePath: 'lib/images/thm_logoFinal.png', headerText: 'Checkout'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: const Text("Your order has been Processed.")
          ),
          QrImage(
            data: '${createOrderList()}\nTotal: ${widget.total}',
            version: QrVersions.auto,
            size: 200.0,
          ),
          Text("Total: Php. ${widget.total}"),

        ],
      ),
    );
  }
}


