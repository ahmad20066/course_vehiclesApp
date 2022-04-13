import 'package:flutter/material.dart';
import 'package:vehicles_app/models/category_model.dart';
import 'package:vehicles_app/models/vehicle_model.dart';

class DummyData {
  static final dummyCategories = [
    CategoryModel(id: 'c1', title: "BMW", color: Colors.blue),
    CategoryModel(id: 'c2', title: "Mercedes", color: Colors.pink),
    CategoryModel(id: 'c3', title: "Dodge", color: Colors.red),
    CategoryModel(id: 'c4', title: "Honda", color: Colors.orange),
    CategoryModel(id: 'c5', title: "Kia", color: Colors.blue),
    CategoryModel(id: 'c6', title: "Nissan", color: Colors.yellow),
  ];
  static final dummyVehicles = [
    VehicleModel(
        id: 'v1',
        title: "M5",
        categoryTitle: 'BMW',
        ImageUrl:
            "https://cdn.motor1.com/images/mgl/Bz1jR/s1/2020-bmw-m5-edition-35-years.jpg",
        year: 2010,
        color: Colors.black,
        price: 3000,
        engineCapacity: 1800,
        isFullOption: true,
        description:
            "The BMW M5 has 1 Petrol Engine on offer. The Petrol engine is 4395 cc . It is available with Automatic transmission. Depending upon the variant and fuel type the M5 has a mileage of 9.12 kmpl . The M5 is a 5 seater 8 cylinder car and has length of 4983mm, width of 2126mm and a wheelbase of 2982mm"),
    VehicleModel(
        id: 'v2',
        title: "M3",
        ImageUrl:
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-bmw-m3-competition-xdrive-110-1618601677.jpg?crop=0.641xw:0.721xh;0.0224xw,0.190xh&resize=640:*",
        categoryTitle: 'BMW',
        color: Colors.grey,
        year: 2019,
        price: 4000,
        isFullOption: false,
        engineCapacity: 2000),
    VehicleModel(
        id: 'v3',
        title: "740i",
        categoryTitle: 'BMW',
        ImageUrl: "https://www.ccarprice.com/products/BMW-740i-2021_1.jpg",
        year: 2010,
        isFullOption: true,
        price: 3000,
        color: Colors.black,
        engineCapacity: 3500),
    VehicleModel(
        id: 'v4',
        title: "c180",
        isFullOption: true,
        categoryTitle: 'Mercedes',
        ImageUrl:
            "https://www.ccarprice.com/products/Mercedes-Benz-C-Class-C180-2020.jpg",
        year: 2020,
        price: 5000,
        color: Colors.white,
        engineCapacity: 1800),
    VehicleModel(
        id: 'v5',
        title: "e63",
        categoryTitle: 'Mercedes',
        ImageUrl: "https://carwow-uk-wp-3.imgix.net/20C0257_015-scaled.jpg",
        year: 2022,
        price: 7000,
        color: Colors.black,
        isFullOption: false,
        engineCapacity: 5000),
    VehicleModel(
        id: 'v6',
        title: "G-Class",
        categoryTitle: 'Mercedes',
        ImageUrl:
            "https://mediacloud.carbuyer.co.uk/image/private/s--xax-i890--/v1628524112/autoexpress/2021/08/Mercedes%20G%20400%20d%20.jpg",
        year: 2018,
        isFullOption: false,
        color: Colors.blueGrey,
        price: 5000,
        engineCapacity: 4500),
    VehicleModel(
        id: 'v7',
        title: "Challenger",
        categoryTitle: 'Dodge',
        isFullOption: true,
        ImageUrl:
            "https://media.ed.edmunds-media.com/dodge/challenger/2022/oem/2022_dodge_challenger_coupe_gt_fq_oem_1_1280.jpg",
        year: 2018,
        price: 5000,
        color: Colors.blueGrey,
        engineCapacity: 4500),
    VehicleModel(
        id: 'v8',
        title: "Charger",
        categoryTitle: 'Dodge',
        isFullOption: true,
        ImageUrl:
            "https://www.dodge.com/mediaserver/iris?client=fcaus&market=U&brand=D&vehicle=2021_LD&paint=PX8&fabric=X9&sa=LDDM48%2C2DG%2C2EG%2C2EG%2CADX%2CAPA%2CBF%2CDFW%2CERB%2CJA9%2CMCH%2CMEA%2CMG4%2CMV2%2CMXP%2CPX8%2CSDD%2CTBC%2CTVJ%2CUAG%2CWRE%2CX9&pov=fronthero&width=1024&bkgnd=White&resp=jpg&cut=",
        year: 2016,
        price: 4000,
        color: Colors.black,
        engineCapacity: 4500),
    VehicleModel(
        id: 'v9',
        title: "Crv",
        categoryTitle: 'Honda',
        isFullOption: true,
        ImageUrl:
            "https://cars.usnews.com/static/images/Auto/izmo/293648/2008_honda_cr_v_angularfront.jpg",
        year: 2008,
        price: 2000,
        color: Colors.grey,
        engineCapacity: 2400),
    VehicleModel(
        id: 'v10',
        title: "Accord",
        categoryTitle: 'Honda',
        isFullOption: false,
        ImageUrl:
            "https://tdrresearch.azureedge.net/photos/chrome/Expanded/White/2010HON015b/2010HON015b01.jpg",
        year: 2010,
        color: Colors.white,
        price: 3000,
        engineCapacity: 3500),
    VehicleModel(
        id: 'v11',
        title: "Optima",
        categoryTitle: 'Kia',
        ImageUrl:
            "https://www.motortrend.com/uploads/sites/5/2018/10/2019-Kia-Optima-SX-front-three-quarter-in-motion-3.jpg",
        year: 2017,
        price: 4500,
        color: Colors.white,
        isFullOption: false,
        engineCapacity: 2000),
  ];
}
