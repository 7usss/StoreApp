import 'package:aa/Api.dart';
import 'package:aa/Model/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateproduct(
      {required int id,
      required String title,
      required String description,
      required String image,
      required String price,
      required String categories}) async {
    dynamic data = await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'image': image,
      'description': description,
      'price': price,
      'category': categories,
    });
    return ProductModel.fromjason(data);
  }
}
