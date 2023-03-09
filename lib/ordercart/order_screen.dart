import 'package:flutter/material.dart';
import 'package:food_delivery/ordercart/order_menu.dart';
import 'package:food_delivery/ordercart/order_total.dart';


class CartScreen extends StatelessWidget{
  const CartScreen({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: Column(
        children: [
          OrderMenu(),
           CartTotal(),
          /*TextButton(
            onPressed: () {},
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: const Text(
                'Make a Payment',
                style: TextStyle(color: Colors.white, fontSize: 13.0),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}