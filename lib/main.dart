import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/widgets/layout.dart';

void main() {
  Get.put(MenuController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dash Board",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blue,
      ),
      home: SiteLayout(),
    );
  }
}
