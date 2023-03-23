import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../views/home_view.dart';

class HomeController extends GetxController {
  Rx<TextEditingController> count = TextEditingController().obs;
  RxList<selected> list3 = RxList<selected>([]);
  RxList<selected> list2 = RxList<selected>([]);
  RxList<selected> list1 = RxList<selected>([]);
  RxList<selected> list0 = RxList<selected>([]);

  RxInt listIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
