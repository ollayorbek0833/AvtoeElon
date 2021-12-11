import 'car_proporties.dart';

class Car {
  String model;
  String location;
  String imageUrl;
  String cost;
  String details;


  Car(
    this.model,
    this.location,
    this.imageUrl,
    this.cost,
    this.details,
  );
}

Car cars(int index){
  return Car(models[index], locations[index], images[index], costs[index], details[index]);
}


