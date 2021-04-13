//kode utama Aplikasi tampilan awal
import 'package:flutter/material.dart';
import 'package:stock_plastik/stock/stockhome.dart';
import 'package:stock_plastik/item/home.dart';
import 'homePage.dart';

//package letak folder Anda
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
           '/': (_) => Home(),
          Homeitem.itemPage: (_) => Homeitem(),
          Homestock.homeStock: (_) => Homestock(),
        });
  }
}

