import 'package:flutter/material.dart';

class VehicleModel {
  final String id;
  final String title;
  final String categoryTitle;
  final int year;
  final double engineCapacity;
  final double price;
  final String ImageUrl;
  final Color color;
  String? description;
  bool isFullOption;
  bool isFavorite;
  VehicleModel({
    required this.id,
    required this.title,
    required this.categoryTitle,
    required this.year,
    required this.engineCapacity,
    required this.price,
    required this.ImageUrl,
    required this.color,
    this.description,
    required this.isFullOption,
    this.isFavorite = false,
  });
}
