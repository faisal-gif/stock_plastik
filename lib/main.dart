
import 'package:flutter/material.dart';
import 'package:stock_plastik/homepage.dart';
import 'package:stock_plastik/stock/stockhome.dart';
import 'package:stock_plastik/item/home.dart';
import 'package:stock_plastik/homepage.dart';
import 'login_page.dart';

//package letak folder Anda
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  
  final routes = <String, WidgetBuilder>{
          Home.homepage : (_) => Home(),
          Homeitem.itemPage: (_) => Homeitem(),
          Homestock.homeStock: (_) => Homestock(),
  };
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: LoginPage(),
        routes:routes);
  }
}

