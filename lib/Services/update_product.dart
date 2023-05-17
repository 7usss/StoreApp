import 'package:aa/Api.dart';
import 'package:aa/Model/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateproduct(
      {required String url,
      required String title,
      required String description,
      required String image,
      required String price,
      required String categories}) async {
    dynamic data = await Api().post(url: 'https://fakestoreapi.com/products/$url', body: {
      'title': title,
      'image': image,
      'description': description,
      'price': price,
      'category': categories,
    });
    return ProductModel.fromjason(data);
  }
}
