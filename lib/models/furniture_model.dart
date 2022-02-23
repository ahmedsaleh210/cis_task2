class FurnitureModel{
  final String name;
  final String price;
  final String image;
  FurnitureModel
      ({
        required this.name,
        required this.price,
        required this.image,
      });
}


List<FurnitureModel> furnituresItems=[
  FurnitureModel(
      name: 'Brown Chair',
      price: '60\$',
      image: 'https://4.bp.blogspot.com/-3ERiGzhJ2lI/Ur6WLccOTtI/AAAAAAAABXg/Ko20360gVRs/s1600/%D8%B7%D8%A7%D9%88%D9%84%D8%A9+%D8%A7%D9%84%D9%82%D9%87%D9%88%D8%A9.jpg',
  ),
  FurnitureModel(
      name: 'Grey Chair',
      price: '50\$',
      image: 'https://www.ra2ed.com/big/5-551.jpg',
  ),
  FurnitureModel(
      name: 'Purple Chair',
      price: '55\$',
      image: 'https://www.ra2ed.com/big/9-275.jpg',
  ),
  FurnitureModel(
      name: 'desk drawer',
      price: '58\$',
      image: 'https://dubarter.s3-eu-west-1.amazonaws.com/2018/05/1593167860807026260.jpg',
  ),
];

class NewModel{
  final String name;
  final String price;
  final String image;
  final double rate;
  NewModel
      ({
    required this.name,
    required this.price,
    required this.image,
    required this.rate,
  });
}

List<NewModel> newItems=[
  NewModel(
    name: 'Green Chair',
    price: '\$ 60',
    image: 'assets/images/pic1.png',
    rate: 4.9
  ),
  NewModel(
    name: 'Purple Chair',
    price: '\$ 65',
    image: 'assets/images/pic2.png',
    rate:4.4,
  ),
];