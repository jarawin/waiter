import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/ordercart/order_controller.dart';
import 'package:get/get.dart';
import 'list_menu.dart';

class OrderMenu extends StatelessWidget{
  final OrderController controller = Get.find();
  OrderMenu({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => SizedBox(
        height: 600,
        child: ListView.builder(
            itemCount: controller.orders.length,
            itemBuilder: (BuildContext context,int index){
              return CartOrderCard(
                controller: controller,
                order: controller.orders.keys.toList()[index],
                quantity: controller.orders.values.toList()[index],
                index: index,
              );
            }),
      ),
    );
  }
}
class CartOrderCard extends StatelessWidget{
  final OrderController controller;
  final ListFood order;
  final int quantity;
  final int index;
  const CartOrderCard({
    Key? key,
    required this.controller,
    required this.order,
    required this.quantity,
    required this.index,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              order.image,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(order.name),
          ),
          IconButton(
            onPressed: () {
              controller.removeProduct(order);
            },
            icon: Icon(Icons.remove_circle),
          ),
          Text('${quantity}'),
          IconButton(
            onPressed: () {
              controller.addProduct(order);
            },
            icon: Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}