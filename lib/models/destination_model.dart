// ignore_for_file: unused_import, prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;

  DestinationModel({
    required this.id,
    this.name = '',
    this.city = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.price = 0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        imageUrl: json['imageUrl'],
        rating: json['rating'].toDouble(),
        price: json['price'],
      );

      Map<String, dynamic> toJson() => {
        id: id,
        'name': name,
        'city' : city,
        'imageUrl': imageUrl,
        'rating': rating,
        'price': price,

      };

  @override
  // ignore: todo
  // TODO: implement props
  List<Object?> get props => [id, name, city, imageUrl, rating, price];
}
