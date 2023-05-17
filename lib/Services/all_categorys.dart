import 'dart:convert';

import 'package:aa/Api.dart';
import 'package:aa/Model/product_model.dart';

class AllCategorys {
  Future<List<ProductModel>> getAllCategoryes() async {
    dynamic data = await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
