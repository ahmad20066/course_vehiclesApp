import 'package:flutter/material.dart';
import 'package:vehicles_app/screens/favorites_screen.dart';

class CustomListTile extends StatelessWidget {
  final IconData leading;
  final String title;
  final IconData trailing;
  final String subtitle;
  final onTap;
  CustomListTile(
      {required this.leading,
      required this.onTap,
      required this.title,
      required this.trailing,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        leading,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(trailing),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
