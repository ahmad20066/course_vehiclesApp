import 'package:flutter/material.dart';
import 'package:vehicles_app/screens/vehicle_details_screen.dart';

class VehicleWidget extends StatelessWidget {
  final String imageUrl;
  final String vehicleTitle;
  final double price;
  final int year;
  final double capacity;
  final String id;
  VehicleWidget(
      {required this.imageUrl,
      required this.id,
      required this.vehicleTitle,
      required this.capacity,
      required this.year,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, VehicleDetailsScreen.routeName,
            arguments: id);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 20,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(children: [
              ClipRRect(
                  //image of the vehicle
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(imageUrl)),
              Positioned(
                //vehicle title
                top: 100,
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  // height: 100,
                  width: 150,
                  child: Text(
                    vehicleTitle,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ]),
            Container(
              height: 40,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Year : $year",
                  ),
                  Text("Capacity : ${capacity}cc"),
                  Text("Price : $price\$")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
