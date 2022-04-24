import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  CustomContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 40,
      color: Colors.orange.withOpacity(0.7),
      child: Text(
        text,
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}
