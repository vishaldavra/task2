import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'dart:math' as math;
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller.count.value,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Enter number"),
            maxLength: 2,
            onChanged: (value) {
              controller.update();
              controller.count.update(
                (val) {},
              );
            },
          ),
          Spacer(),
          SingleChildScrollView(
            child: Container(
              height: 500,
              child: Column(
                children: [
                  Expanded(
                    child: listItem(diraction: Axis.vertical, isReverse: true),
                  ),
                  SizedBox(
                    height: 20,
                    child: Row(
                      children: [
                        Expanded(
                          child: listItem1(diraction: Axis.horizontal, isReverse: true),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: listItem2(diraction: Axis.horizontal),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: listItem3(diraction: Axis.vertical),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  listItem({Axis diraction = Axis.horizontal, bool isReverse = false}) {
    return Obx(
      () {
        controller.list0 = List.generate((controller.count.value.text.length <= 0) ? 0 : int.parse(controller.count.value.text), (index) => selected(count: 0.obs)).obs;
        return ListView.separated(
          reverse: isReverse,
          scrollDirection: diraction,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
              width: 10,
            );
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.listIndex.value = 2;
                Colorchanger(index, controller.list0);
              },
              child: Obx(() {
                return Center(
                    child: CircleAvatar(
                  radius: 10,
                  backgroundColor: (controller.list0[index].count!.value == 0)
                      ? Colors.lightBlue.shade200
                      : (controller.list0[index].count!.value == 2)
                          ? Colors.red
                          : Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                  child: Text("${index + 1}"),
                ));
              }),
            );
          },
          itemCount: controller.list0.length,
        );
      },
    );
  }

  listItem1({Axis diraction = Axis.horizontal, bool isReverse = false}) {
    return Obx(
      () {
        controller.list1 = List.generate((controller.count.value.text.length <= 0) ? 0 : int.parse(controller.count.value.text), (index) => selected(count: 0.obs)).obs;
        return ListView.separated(
          reverse: isReverse,
          scrollDirection: diraction,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
              width: 10,
            );
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.listIndex.value = 2;
                Colorchanger(index, controller.list1);
              },
              child: Obx(() {
                return Center(
                    child: CircleAvatar(
                  radius: 10,
                  backgroundColor: (controller.list1[index].count!.value == 0)
                      ? Colors.lightBlue.shade200
                      : (controller.list1[index].count!.value == 2)
                          ? Colors.red
                          : Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                  child: Text("${index + 1}"),
                ));
              }),
            );
          },
          itemCount: controller.list1.length,
        );
      },
    );
  }

  listItem2({Axis diraction = Axis.horizontal, bool isReverse = false}) {
    return Obx(
      () {
        controller.list2 = List.generate((controller.count.value.text.length <= 0) ? 0 : int.parse(controller.count.value.text), (index) => selected(count: 0.obs)).obs;
        return ListView.separated(
          reverse: isReverse,
          scrollDirection: diraction,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
              width: 10,
            );
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.listIndex.value = 2;
                Colorchanger(index, controller.list2);
              },
              child: Obx(() {
                return Center(
                    child: CircleAvatar(
                  radius: 10,
                  backgroundColor: (controller.list2[index].count!.value == 0)
                      ? Colors.lightBlue.shade200
                      : (controller.list2[index].count!.value == 2)
                          ? Colors.red
                          : Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                  child: Text("${index + 1}"),
                ));
              }),
            );
          },
          itemCount: controller.list2.length,
        );
      },
    );
  }

  listItem3({Axis diraction = Axis.horizontal, bool isReverse = false}) {
    return Obx(
      () {
        controller.list3 = List.generate((controller.count.value.text.length <= 0) ? 0 : int.parse(controller.count.value.text), (index) => selected(count: 0.obs)).obs;
        return ListView.separated(
          reverse: isReverse,
          scrollDirection: diraction,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
              width: 10,
            );
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.listIndex.value = 2;
                Colorchanger(index, controller.list3);
              },
              child: Obx(() {
                return Center(
                    child: CircleAvatar(
                  radius: 10,
                  backgroundColor: (controller.list3[index].count!.value == 0)
                      ? Colors.lightBlue.shade200
                      : (controller.list3[index].count!.value == 2)
                          ? Colors.red
                          : Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                  child: Text("${index + 1}"),
                ));
              }),
            );
          },
          itemCount: controller.list3.length,
        );
      },
    );
  }

  void Colorchanger(int Index, List list) {
    for (int i = 0; i < controller.list3.length; i++) {
      if (controller.list3[i].count!.value == 2) {
        controller.list3[i].count!.value = 1;
      }
    }
    for (int i = 0; i < controller.list2.length; i++) {
      if (controller.list2[i].count!.value == 2) {
        controller.list2[i].count!.value = 1;
      }
    }
    for (int i = 0; i < controller.list1.length; i++) {
      if (controller.list1[i].count!.value == 2) {
        controller.list1[i].count!.value = 1;
      }
    }
    for (int i = 0; i < controller.list0.length; i++) {
      if (controller.list0[i].count!.value == 2) {
        controller.list0[i].count!.value = 1;
      }
    }
    list[Index].count!.value = 2;
  }
}

class selected {
  RxInt? count;

  selected({this.count});

  selected.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    return data;
  }
}
