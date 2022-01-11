
class RentalDetails {

  String? name;
  String? location;
  String? imageUrl;
  int? price;
  double? rating;

  RentalDetails({this.name,this.location,this.imageUrl,this.price,this.rating});

}

List <RentalDetails>  listOfRentalDetails = [

  RentalDetails(
    name: 'Joe Alfred',
    price: 27,
    imageUrl: 'house1',
    location: 'Lagos',
    rating: 4.7,
  ),
  RentalDetails(
    name: 'Theo Thompson',
    price: 32,
    imageUrl:  'house2',
    location: 'Moscow',
    rating: 4.8,
  ),
  RentalDetails(
    name: 'Kama Clay',
    price: 32,
    imageUrl: 'house2',
    location: 'London',
    rating: 4.6,
  ),
  RentalDetails(
    name: 'Kelly Rom',
    price: 40,
    imageUrl: 'house4',
    location: 'Ibadan',
    rating: 4.6,
  ),
  RentalDetails(
    name: 'Kelly Rom',
    price: 40,
    imageUrl: 'house1',
    location: 'Ibadan',
    rating: 4.6,
  ),
  RentalDetails(
    name: 'Kelly Rom',
    price: 40,
    imageUrl: 'house2',
    location: 'Ibadan',
    rating: 4.6,
  ),
  RentalDetails(
    name: 'Kelly Rom',
    price: 40,
    imageUrl: 'house3',
    location: 'Ibadan',
    rating: 4.6,
  ),
  RentalDetails(
    name: 'Kelly Rom',
    price: 40,
    imageUrl: 'house4',
    location: 'Ibadan',
    rating: 4.6,
  ),
];