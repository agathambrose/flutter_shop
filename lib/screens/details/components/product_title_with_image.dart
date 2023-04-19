import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../../../models/product_page.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    currency(context) {
      Locale locale = Localizations.localeOf(context);
      var format =
          NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'GHS');
      return format;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefaultPaddin * 2,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(text: "Price\n"),
                TextSpan(
                    text: "${currency(context).currencySymbol}${product.price}",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ])),
              const SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                                  product.image,
                                  fit: BoxFit.fill,
                                ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
