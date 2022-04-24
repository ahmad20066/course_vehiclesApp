// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vehicles_app/dummy_data.dart';
import 'package:vehicles_app/models/vehicle_model.dart';
import 'package:vehicles_app/widgets/custom_container.dart';

class VehicleDetailsScreen extends StatefulWidget {
  static const routeName = '/vehicleDetails';

  @override
  State<VehicleDetailsScreen> createState() => _VehicleDetailsScreenState();
}

class _VehicleDetailsScreenState extends State<VehicleDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final vehicleId = ModalRoute.of(context)!.settings.arguments as String;
    final VehicleModel vehicle = DummyData.dummyVehicles.firstWhere(
      (element) => element.id == vehicleId,
    );
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              vehicle.isFavorite = !vehicle.isFavorite;
            });
          },
          child: Icon(
              vehicle.isFavorite ? Icons.star : Icons.star_border_outlined),
        ),
        appBar: AppBar(
          title: Text(vehicle.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(vehicle.ImageUrl),
              CustomContainer(
                text: "Model : ${vehicle.categoryTitle} ${vehicle.title}",
              ),
              CustomContainer(
                text: "Year : ${vehicle.year}",
              ),
              CustomContainer(text: "Price : ${vehicle.price}\$"),
              CustomContainer(
                  text: "Engine Capacity : ${vehicle.engineCapacity}cc"),
              const SizedBox(
                height: 20,
              ),
              Row(
                //full option?

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Full Option :",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Icon(
                    vehicle.isFullOption ? Icons.check : Icons.cancel,
                    size: 35,
                    color: vehicle.isFullOption ? Colors.green : Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Color : ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    color: vehicle.color,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              if (vehicle.description != null)
                Text(
                  "Description :",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              if (vehicle.description != null)
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  height: 200,
                  width: 300,
                  color: Colors.orange.withOpacity(0.3),
                  child: SingleChildScrollView(
                      child: Text(
                    vehicle.description!,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
