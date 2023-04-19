import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product_page.dart';
import '../description.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.1,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin),
                // height: 600,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    const SizedBox(
                      height: kDefaultPaddin / 2,
                    ),
                    Description(product: product),
                    const SizedBox(
                      height: kDefaultPaddin / 2,
                    ),
                    const CounterWithFavBtn(),
                    const SizedBox(
                      height: kDefaultPaddin / 2,
                    ),
                    AddToCart(product: product)
                  ],
                ),
              ),
              ProductTitleWithImage(product: product)
            ]),
          )
        ],
      ),
    );
  }
}
