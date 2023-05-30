import 'dart:convert';

import 'package:aa/Api.dart';
import 'package:aa/Model/product_model.dart';

class GetAllCategoryes {
  Future<List<ProductModel>> GetAllCategoryesbyname({required String categoryes}) async {
    dynamic data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryes');

    List<ProductModel> categoriesListByname = [];
    for (var i = 0; i < data.length; i++) {
      categoriesListByname.add(ProductModel.fromjason(data[i]));
    }
    return categoriesListByname;
  }
}
