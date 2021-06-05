
import 'package:ecommerce_int2/screens/splash_page.dart';
import 'package:ecommerce_int2/screens/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_int2/Canh/asyna_await_sample.dart';
import 'package:ecommerce_int2/Canh/asyna_await_background_sample.dart';
import 'package:ecommerce_int2/Canh/checkbox_sample.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eCommerce int2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        canvasColor: Colors.transparent,
        // primarySwatch: Colors.blue,
        primarySwatch: Colors.orange,
        fontFamily: "Montserrat",
      ),
      home: MainPage(),
      // home: AsynAwaitBackground(),
      // home: CheckBoxSample(),
    );
  }
}
