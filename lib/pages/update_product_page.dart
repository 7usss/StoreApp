import 'package:aa/Model/product_model.dart';
import 'package:aa/Services/update_product.dart';
import 'package:aa/constant/text_field.dart';
import 'package:flutter/material.dart';

import '../constant/botton_widget.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key, required this.products});
  final ProductModel products;

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, image, description;
  dynamic price;
  int? id;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تحديث المنتج'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: isLoading == true
            ? const Center(child: CircularProgressIndicator())
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField1(
                    hint1: 'title',
                    onchange: (value) {
                      productName = value;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField1(
                    hint1: 'image',
                    onchange: (value) {
                      image = value;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField1(
                    hint1: 'price',
                    onchange: (value) {
                      price = value;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField1(
                    hint1: 'description',
                    onchange: (value) {
                      description = value;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  bottonWidget(
                    ontap: () async {
                      setState(() {});
                      isLoading = true;

                      try {
                        print('sucsse');
                        await updateproducts();
                      } catch (e) {
                        print(e);
                      }
                      setState(() {});
                      isLoading = false;
                    },
                  )
                ],
              ),
      ),
    );
  }

  Future<ProductModel> updateproducts() {
    return UpdateProductService().updateproduct(
        id: widget.products.id,
        title: productName == null ? widget.products.title : productName!,
        description: description == null ? widget.products.description : description!,
        image: image == null ? widget.products.image : image!,
        price: price == null ? widget.products.price.toString() : price!,
        categories: widget.products.category);
  }
}
