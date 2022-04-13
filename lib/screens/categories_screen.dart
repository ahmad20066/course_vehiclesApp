import 'package:flutter/material.dart';
import 'package:vehicles_app/dummy_data.dart';
import 'package:vehicles_app/widgets/category_widget.dart';

class CategoriesScreen extends StatelessWidget {
  final categories = DummyData.dummyCategories;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Categories"),
        ),
        body: GridView.builder(
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // mainAxisSpacing: 10,
                // crossAxisSpacing: 10,
                childAspectRatio: 1),
            itemBuilder: (context, index) {
              return CategoryWidget(
                title: categories[index].title,
                color: categories[index].color,
                id: categories[index].id,
              );
            }));
  }
}
