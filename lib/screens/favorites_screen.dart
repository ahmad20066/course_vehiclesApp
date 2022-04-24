import 'package:flutter/material.dart';
import 'package:vehicles_app/dummy_data.dart';
import 'package:vehicles_app/models/vehicle_model.dart';
import 'package:vehicles_app/widgets/vehicle_widget.dart';

class FavoritesScreen extends StatefulWidget {
  static const routeName = '/favorites';

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<VehicleModel> favVehicles =
      DummyData.dummyVehicles.where((element) => element.isFavorite).toList();
  @override
  Widget build(BuildScaffoldontext) {
    return Scaffold(
      body: ListView.builder(
          itemCount: favVehicles.length,
          itemBuilder: (context, index) {
            return VehicleWidget(
                imageUrl: favVehicles[index].ImageUrl,
                id: favVehicles[index].id,
                vehicleTitle: favVehicles[index].title,
                capacity: favVehicles[index].engineCapacity,
                year: favVehicles[index].year,
                price: favVehicles[index].price);
          }),
    );
  }
}
