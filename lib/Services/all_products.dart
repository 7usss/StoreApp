import 'package:aa/Model/product_model.dart';
import '../Api.dart';

class AllProducts {
  Future<List<ProductModel>> getallproducts() async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productlistList = [];
    for (var i = 0; i < data.length; i++) {
      productlistList.add(ProductModel.fromjason(data[i]));
    }
    return productlistList;
  }
}
