import 'package:aa/Model/product_model.dart';
import 'package:flutter/material.dart';

class TextWidget_ extends StatelessWidget {
  final double? fontSize;
  final String text;
  final FontWeight? fontWidth;
  Color? fontColor = Colors.white;

  TextWidget_({
    required this.text,
    this.fontColor,
    this.fontSize,
    this.fontWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: fontColor, fontWeight: fontWidth, fontSize: fontSize),
    );
  }
}

class ProductsCard extends StatelessWidget {
  ProductModel products;

  ProductsCard({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 6,
        top: 108,
      ),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 150,
            width: 160,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 93, 92, 92),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextWidget_(
                  text: 'Title',
                  fontWidth: FontWeight.w500,
                  fontColor: Colors.amberAccent,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget_(
                      text: products.price.toString(),
                      fontWidth: FontWeight.w400,
                      fontColor: Colors.amber,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ))
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: -100,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.network(products.image),
            ),
          ),
        ],
      ),
    );
  }
}
