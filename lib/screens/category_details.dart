import 'package:flutter/material.dart';
import 'package:vehicles_app/dummy_data.dart';
import 'package:vehicles_app/models/category_model.dart';
import 'package:vehicles_app/models/vehicle_model.dart';
import 'package:vehicles_app/widgets/vehicle_widget.dart';

class CategoryDetailsScreen extends StatelessWidget {
  static const routeName = "/CategoryDetails";

  @override
  Widget build(BuildContext context) {
    final categoryId = ModalRoute.of(context)!.settings.arguments as String;
    final CategoryModel category = DummyData.dummyCategories
        .firstWhere((element) => element.id == categoryId);
    final List<VehicleModel> vehicles = DummyData.dummyVehicles
        .where((element) => element.categoryTitle == category.title)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: vehicles.isNotEmpty
          ? ListView.builder(
              itemCount: vehicles.length,
              itemBuilder: (context, index) {
                return VehicleWidget(
                  id: vehicles[index].id,
                  imageUrl: vehicles[index].ImageUrl,
                  vehicleTitle: vehicles[index].title,
                  price: vehicles[index].price,
                  capacity: vehicles[index].engineCapacity,
                  year: vehicles[index].year,
                );
              })
          : Center(
              child: Text("No vehicles for this category"),
            ),
    );
  }
}
