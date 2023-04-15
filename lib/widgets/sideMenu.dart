import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:webapp/constant/style.dart';
import 'package:webapp/controllers/menuController.dart';
import 'package:webapp/helpers/responsiveWidget.dart';
import 'package:webapp/routing/routes.dart';
import 'package:webapp/widgets/customText.dart';
import 'package:webapp/widgets/sideMenuItems.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    SideMenuItem;
    final MennuController myController = Get.put(MennuController());

    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: llight,
      child: ListView(children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: _width / 48,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Image.asset("asset/images/search.png"),
                  ),
                  Flexible(
                      child: CostumText(
                    text: "dash",
                    Size: 0,
                    weight: FontWeight.bold,
                    color: active,
                  )),
                  SizedBox(
                    width: _width / 48,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Divider(
                color: lightGrey.withOpacity(.1),
              ),
            ],
          )
      ]),
    );
  }
}
