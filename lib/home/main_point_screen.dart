import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/home/call_waiter_screen.dart';
import 'package:food_delivery/not_use_file/main_food_page.dart';
import 'package:food_delivery/home/main_food_screen.dart';
import 'package:food_delivery/home/point_page_screen.dart';
import 'package:food_delivery/home/setting_page_screen.dart';
import 'package:food_delivery/ordercart/order_screen.dart';
import 'package:get/get.dart';
class MainPointScreen extends StatefulWidget {
  const MainPointScreen({Key? key}) : super(key: key);


  @override
  State<MainPointScreen> createState() => _MainPointScreenState();
}

//ปุ่ม
class _MainPointScreenState extends State<MainPointScreen>{
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  //const CatalogScreen({Key? key}) : super(key:key);
  int _currentIndex = 0;
  final List<Widget> _pages = [
    // Replace with your own pages here
    //CatalogScreen(),
   // Pointpage(),
   // CartScreen(),
    //CallWaiter(),
   // SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu")),
      body: SafeArea(
        child: Column(
          children: [
            MainFoodScreen(),
            //MainFoodPage(),
            ElevatedButton(
                onPressed: () => Get.to(()=>CartScreen()),
                child: Text('Go to Cart')
            ),
          ],
        ),
      ),
      //body:  _pages[_currentIndex],
      /*bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Color(0xFF89dad0),
        //currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            tooltip: 'Home',
            label: 'Home',
            // backgroundColor: Colors.blue.withOpacity(1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_score),
            tooltip: 'Point',
            label: 'Point',
            //backgroundColor: Colors.blue.withOpacity(1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_outlined),
            tooltip: 'Order',
            label: 'Order',
            // backgroundColor: Colors.blue.withOpacity(1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            tooltip: 'Waiter',
            label: 'Waiter',
            //backgroundColor: Colors.blue.withOpacity(1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            tooltip: 'Setting',
            label: 'Setting',
            //backgroundColor: Colors.blue.withOpacity(1.0),
          ),
        ],
      ),*/
    );
  }
}