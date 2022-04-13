import 'package:flutter/material.dart';
import 'package:vehicles_app/dummy_data.dart';
import 'package:vehicles_app/models/category_model.dart';

class CategoryDetailsScreen extends StatelessWidget {
  static const routeName = "/CategoryDetails";

  @override
  Widget build(BuildContext context) {
    final categoryId = ModalRoute.of(context)!.settings.arguments as String;
    final CategoryModel category = DummyData.dummyCategories
        .firstWhere((element) => element.id == categoryId);
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
    );
  }
}
