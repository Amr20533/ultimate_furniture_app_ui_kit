class FurnitureData{
  final String mainImage;
  final List<String> viewImage;
  final String description;
  final String title;
  final String subTitle;
  final bool inCart;
  final int quantity;
  final int color;
  final String price;

  FurnitureData({required this.mainImage, required this.viewImage, required this.description, required this.title, required this.subTitle, required this.inCart, required this.quantity, required this.color, required this.price});

  static List<FurnitureData> furniture = [
    FurnitureData(
        title: 'Wingback Chair',
        subTitle: 'modern saddle arms and wooden legs.',
        description: 'A contemporary twist on classic mid-century modern design, the Nashville armchair is upholstered in royal blue velvet and brings an air of sophistication to your living space. Available in a choice of rich velvet colours, the Nashville is also available as a 2-seater loveseat sofa.',
        mainImage: 'assets/images/chair_1.png',
        viewImage: [],
        inCart: false,
        quantity: 1,
        color: 0,
        price: '1,512'
    ),
    FurnitureData(
      title: 'Nashville Armchair',
      subTitle: 'curved with two tiers of comfort. ',
      description: 'A contemporary twist on classic mid-century modern design, the Nashville armchair is upholstered in royal blue velvet and brings an air of sophistication to your living space. Available in a choice of rich velvet colours, the Nashville is also available as a 2-seater loveseat sofa.',
      mainImage: 'assets/images/chair_2.png',
      viewImage: List.generate(8, (index) => 'assets/images/view_chair_${index+1}.png').toList(),
      inCart: false,
      quantity: 1,
      color: 0,
      price: '1,895'
    ),
    FurnitureData(
      title: 'Ellington office chair',
      subTitle: 'curved with two tiers of comfort. ',
      description: 'The elegant base, crafted from sturdy metal, adds a touch of modernity, while the smooth-rolling casters ensure effortless mobility across your office floor. Perfect for home offices or corporate environments, the Ellington Office Chair combines functionality and aesthetic appeal, making it the ideal addition to elevate your workspace.',
      mainImage: 'assets/images/chair_3.png',
      viewImage: [],
      inCart: false,
      quantity: 1,
      color: 0,
      price: '1,895'
    ),
    FurnitureData(
      title: 'Chaise corner sofa',
      subTitle: 'curved with two tiers of comfort. ',
      description: 'Elevate your living space with our luxurious Chaise Corner Sofa, designed for both comfort and style. This elegant piece features a spacious L-shaped design that seamlessly fits into any corner, maximizing seating while creating a cozy atmosphere.',
      mainImage: 'assets/images/chair_4.png',
      viewImage: [],
      inCart: false,
      quantity: 1,
      color: 0,
      price: '1,895'
    ),

  ];

}