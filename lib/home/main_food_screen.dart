
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/ordercart/order_controller.dart';
import 'package:get/get.dart';
import '../ordercart/list_menu.dart';


class MainFoodScreen extends StatelessWidget{

  MainFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Flexible(
        child:Card(child: ListView.builder(
            itemCount: ListFood.foodlist.length,
            itemBuilder: (BuildContext context,int index){
              return MainFoodScreenCart(
                index: index,);
            }))
    );
  }
}
class MainFoodScreenCart extends StatelessWidget{
  final cartController = Get.put(OrderController());
  final int index;

  MainFoodScreenCart({
    Key? key,

    required this.index,
  }) :super(key:key);


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
            backgroundImage: NetworkImage(
              ListFood.foodlist[index].image,
            ),
          ),
          Expanded(child:Text(
            ListFood.foodlist[index].name,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
          )),
          Expanded(child:Text('${ListFood.foodlist[index].price}')),
          IconButton(
            onPressed: () => {
              cartController.addProduct(ListFood.foodlist[index])
            },
            icon: Icon(
              Icons.add_circle,
            ),
          ),
        ],
      ),
    );
  }
}
/*class MainFoodScreen extends StatefulWidget {
  const MainFoodScreen({Key? key}) : super(key: key);

  @override
  State<MainFoodScreen> createState() => _MainFoodScreenState();
}

class _MainFoodScreenState extends State<MainFoodScreen> {
  TextEditingController textController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    var foodList;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
                children: [
                  AnimSearchBar(
                    width: 470,
                    textController: textController,
                    onSuffixTap: () {
                    setState(() {
                      textController.clear();
                    });
                    },
                    color: AppColors.mainColor!,
                    helpText: "Search Text...",

                    rtl: true, onSubmitted: (String ) {  },
                   )
                  ],
            ),
              Container(
                padding: EdgeInsets.only(left: 15),
                margin: EdgeInsets.only(top: 20),
                height: 315,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    var foodlist;
                    final ListFood food = foodlist[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailFood(food: food);
                            },
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 15, left: 0),
                        width: 225,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: AppColors.mainColor,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  food.image,
                                  width: 150,
                                  height: 130,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      food.name,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "\$" + food.price.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New in",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: AppColors.mainColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    final ListFood food = foodList[index];
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailFood(food: food);
                              },
                            ),
                          );
                        },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 13),
                              decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                  child: Image.asset(foodList[index].image)),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      foodList[index].name,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "\$" + foodList[index].price.toString(),
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
