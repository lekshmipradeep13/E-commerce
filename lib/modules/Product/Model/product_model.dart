import 'package:flutter/material.dart';

class ProductModel{
 final String productname;
 final int id;
 final String? price;
 final String? description;
final  String? category;
final  String imageUrl;
int? rating;
List?size;
List?colors;
String? stock;
bool?isWishlisted;


ProductModel({
  required this.id,
   this.price,
  required this.productname,
  this.description,
   this.category,
  required this.imageUrl,
   this.size,
  this.colors,
   this.stock,
   this.rating,
   this.isWishlisted
});
}

