import 'package:compra/consts/consts.dart';
import 'package:compra/consts/styles.dart';
import 'package:compra/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we are using getX so we have to change this material app into getmaterialapp 
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          // to set appbar icons color
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
          //set elevation to 0
          elevation: 0.0,
          backgroundColor: Colors.transparent
          ),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}