import 'package:food_delivery/ordercart/list_menu.dart';
import 'package:get/get.dart';

class OrderController extends GetxController{
  var _orders = {}.obs;

  void addProduct(ListFood order){
    if(_orders.containsKey(order)){
      _orders[order] += 1;
    }else{
      _orders[order] = 1;
    }

    Get.snackbar(
      "Product add",
      "you have added the ${order.name} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }
  void removeProduct(ListFood order){
    if(_orders.containsKey(order) && _orders[order] == 1){
      _orders.removeWhere((key,value)=>key==order);
    }else{
      _orders[order]-=1;
    }
  }
  get orders => _orders;

  /*get orderSubtotal => _orders.entries
      .map((order) => order.key.price * order.value)
      .toList();
*/
  get total => _orders.entries
      .map((order) => order.key.price * order.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}