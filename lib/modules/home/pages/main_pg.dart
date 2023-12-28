import 'package:flutter/material.dart';

import '../../../configs/x_configs.dart';
import '../x_homes.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // PageProvider pageProvider = Provider.of<PageProvider>(context);
    var currentIndex = 0;

    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: kAppSecond,
        child: Icon(
          Icons.shopping_cart,
          size: 20,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: kAppBg4,
            currentIndex: currentIndex, //pageProvider.currentIndex
            onTap: (value) {
              print(value);
              currentIndex = value; //pageProvider.currentIndex
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Icon(
                    Icons.home,
                    size: 21,
                    color: currentIndex == 0 //pageProvider.
                        ? kAppPrimary
                        : Color(0xff808191),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Icon(
                    Icons.chat,
                    size: 20,
                    color: currentIndex == 1 //pageProvider.currentIndex
                        ? kAppPrimary
                        : Color(0xff808191),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Icon(
                    Icons.heart_broken,
                    size: 20,
                    color: currentIndex == 2 //pageProvider.currentIndex
                        ? kAppPrimary
                        : Color(0xff808191),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 18,
                    color: currentIndex == 3 //pageProvider.currentIndex
                        ? kAppPrimary
                        : Color(0xff808191),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        //pageProvider.currentIndex
        case 0:
          return HomePage();
        case 1:
          return HomePage();
        case 2:
          return HomePage();
        case 3:
          return HomePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor:
          currentIndex == 0 ? kAppBg1 : kAppBg3, //pageProvider.currentIndex
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
