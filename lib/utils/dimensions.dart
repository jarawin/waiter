import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // 932/220 = x = 4.24
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  // dynamic height padding and margin (844/10)
  static double height1_2 = screenHeight / 703.3;
  static double height1_5 = screenHeight / 562.6;
  static double height5 = screenHeight / 168.8;
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height40 = screenHeight / 21.1;
  static double height45 = screenHeight / 18.76;

  // dynamic width padding and margin (844/10)
  static double width5 = screenHeight / 168.8;
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width40 = screenHeight / 21.1;
  static double width45 = screenHeight / 18.76;

  // dymanic font size
  static double font12 = screenHeight / 70.3;
  static double font15 = screenHeight / 56.27;
  static double font20 = screenHeight / 42.2;
  static double font30 = screenHeight / 28.13;

  // dynamic raduis
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  // dynamic icon size
  static double icon15 = screenHeight / 56.27;
  static double icon20 = screenHeight / 42.2;
  static double icon25 = screenHeight / 33.76;
}
