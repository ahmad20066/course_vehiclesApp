import 'package:flutter/material.dart';
import 'package:vehicles_app/screens/category_details.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  CategoryWidget({required this.title, required this.color,required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CategoryDetailsScreen.routeName,
            arguments: id);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        margin: EdgeInsets.all(10),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
