import "dart:io";

import "package:flutter/material.dart";
import "package:intl/intl.dart";

import "../constants.dart";
import "../models/product_page.dart";

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  final Key? key;

  const ItemCard({
    this.key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    currency(context) {
      Locale locale = Localizations.localeOf(context);
      var format =
          NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'GHS');
      return format;
    }

    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: product.color, borderRadius: BorderRadius.circular(16)),
            child:
                Hero(tag: "${product.id}", child: Image.asset(product.image)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "${currency(context).currencySymbol}${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
