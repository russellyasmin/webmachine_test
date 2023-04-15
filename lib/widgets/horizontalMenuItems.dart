import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:webapp/constant/style.dart';
import 'package:webapp/controllers/menuController.dart';
import 'package:webapp/widgets/customText.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const HorizontalMenuItem(
      {super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final MennuController myController = Get.put(MennuController());

    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap(),
      onHover: (value) {
        value
            ? myController.onHover(itemName)
            : myController.onHover("not hovering");
      },
      child: Obx(() => Container(
            color: myController.isHovering(itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: myController.isHovering(itemName) ||
                      myController.isActive(itemName),
                  child: Container(
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                SizedBox(width: _width / 80),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: myController.returnIconFor(itemName),
                ),
                if (!myController.isActive(itemName))
                  Flexible(
                      child: CostumText(
                          text: itemName,
                          Size: 0,
                          color: myController.isHovering(itemName)
                              ? dark
                              : lightGrey,
                          weight: FontWeight.normal))
                else
                  Flexible(
                      child: CostumText(
                          text: itemName,
                          Size: 18,
                          color: dark,
                          weight: FontWeight.bold))
              ],
            ),
          )),
    );
  }
}
