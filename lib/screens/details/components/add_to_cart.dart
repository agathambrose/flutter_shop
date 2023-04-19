import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/product_page.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color),
            ),
            child: IconButton(
              onPressed: () {},
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(product.color, BlendMode.srcIn),
                child: SvgPicture.asset("assets/icons/add_to_cart.svg"),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: product.color,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)))),
                  onPressed: () {},
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
