import 'package:aa/Model/product_model.dart';
import 'package:aa/Services/all_products.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      body: SafeArea(
        child: FutureBuilder<List<ProductModel>>(
          future: AllProducts().getallproducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> allproduct = snapshot.data!;
              return GridView.builder(
                itemCount: allproduct.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return ProductsCard(
                    products: allproduct[index],
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
