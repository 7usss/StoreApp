class ProductModel {
  final int id;
  final String title;
  final String description;
  final dynamic price;
  final String category;
  final String image;
  final RatingModel rate;

  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.image,
      required this.category,
      required this.rate});

  factory ProductModel.fromjason(jsondata) {
    return ProductModel(
      id: jsondata['id'],
      title: jsondata['title'],
      description: jsondata['description'],
      price: jsondata['price'],
      image: jsondata['image'],
      category: jsondata['category'],
      rate: RatingModel.fromjason(
        jsondata['rating'],
      ),
    );
  }
}

class RatingModel {
  final rate;
  final count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjason(jsondata) {
    return RatingModel(
      rate: jsondata['rate'],
      count: jsondata['count'],
    );
  }
}
