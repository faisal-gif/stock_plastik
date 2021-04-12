import 'package:flutter/material.dart';
import 'package:stock_plastik/stock/stockhome.dart';
import 'item/home.dart';
import 'homePage.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.grey[800],
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 10,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.agriculture),
                      ),
                    ),
                  ),
                  Text(
                    'TOKO PLASTIK ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'happy shoppping!',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(Home.homepage);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(
              'Item',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(Homeitem.itemPage);
            },
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text(
              'Stock',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(Homestock.homeStock);
            },
          ),
        ],
      ),
    );
  }
}
