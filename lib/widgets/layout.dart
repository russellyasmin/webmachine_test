import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webapp/helpers/responsiveWidget.dart';
import 'package:webapp/widgets/largeScreen.dart';
import 'package:webapp/widgets/smallScreen.dart';
import 'package:webapp/widgets/topNavigation.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
