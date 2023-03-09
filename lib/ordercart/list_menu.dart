class ListFood {
  final String name;
  final String desc;
  final String image;
  final double price;

  const ListFood({
    required this.name,
    required this.desc,
    required this.image,
    required this.price,
  });


  static const List<ListFood> foodlist = [
    ListFood(
      name: 'Fraise Cream',
      desc:
      'We have been loading up on the stone fruit and berries at the market. We have no self control to these summer gems. We have gross we can out of hand, our  Strawberry...',
      price: 2.50,
      image: 'assets/image/food1.png',
    ),
    ListFood(
      name: 'Mandarine',
      desc:
      'We have been loading up on the stone fruit and berries at the market. We have no self control to these summer gems. We have gross we can out of hand, our  Strawberry...',
      price: 3.50,
      image: 'assets/image/food2.png',
    ),
    ListFood(
      name: 'Caramel Flavor Dessert',
      desc:
      'We have been loading up on the stone fruit and berries at the market. We have no self control to these summer gems. We have gross we can out of hand, our  Strawberry...',
      price: 4.50,
      image: 'assets/image/food1.png',
    ),
    ListFood(
      name: 'Framboise Flavor Dessert',
      desc:
      'We have been loading up on the stone fruit and berries at the market. We have no self control to these summer gems. We have gross we can out of hand, our  Strawberry...',
      price: 3.50,
      image: 'assets/image/food2.png',
    ),
  ];
}