import 'package:flutter/material.dart';
import 'package:prestige_app/data/models/car.dart';
import 'package:prestige_app/presentation/widgets/car_card.dart';

class CarListPage extends StatelessWidget {
  CarListPage({super.key});

  final List<Car> cars = [
    Car(
      model: 'Fortuner Gr',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Dodge Charger',
      distance: 650,
      fuelCapacity: 60,
      pricePerHour: 55,
    ),
    Car(
      model: 'Toyota Camry',
      distance: 500,
      fuelCapacity: 55,
      pricePerHour: 40,
    ),
    Car(model: 'BMW X5', distance: 750, fuelCapacity: 70, pricePerHour: 65),
    Car(model: 'Audi A6', distance: 600, fuelCapacity: 65, pricePerHour: 60),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
