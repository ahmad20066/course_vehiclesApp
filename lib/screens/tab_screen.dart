// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vehicles_app/screens/categories_screen.dart';
import 'package:vehicles_app/screens/favorites_screen.dart';
import 'package:vehicles_app/widgets/custom_listtile.dart';

class TabScreen extends StatefulWidget {
  static const routeName = '/tabScreen';

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, dynamic>> pages = [
    {
      'page': CategoriesScreen(),
      'title': "Categories",
    },
    {'page': FavoritesScreen(), 'title': "Favorites"}
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              AppBar(
                title: Text("Welcome!"),
                automaticallyImplyLeading: false,
                toolbarHeight: 150,
              ),
              CustomListTile(
                  leading: Icons.star,
                  onTap: () {
                    Navigator.pushNamed(context, FavoritesScreen.routeName);
                  },
                  title: "Favorites",
                  trailing: Icons.arrow_forward_ios_sharp,
                  subtitle: "Go to favorites screen")
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(pages[currentIndex]['title']),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 10,
          selectedFontSize: 15,
          unselectedIconTheme: IconThemeData(
            size: 20,
          ),
          selectedIconTheme: IconThemeData(size: 35),
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites"),
          ],
          onTap: (index) {
            print(index);
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: pages[currentIndex]['page'],
      ),
    );
  }
}
