import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webapp/helpers/responsiveWidget.dart';
import 'package:webapp/widgets/horizontalMenuItems.dart';
import 'package:webapp/widgets/verticalMenuItems.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCostomeSize(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);

    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }

  map(Function(dynamic itemName) param0) {}
}
