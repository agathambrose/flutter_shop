import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product_page.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Color"),
            Row(
              children: const [
                ColorDot(
                  color: Color(0xFF356C95),
                  isSelected: true,
                ),
                ColorDot(
                  color: Color(0xFFF8C078),
                  isSelected: false,
                ),
                ColorDot(
                  color: Color(0xFFA29B9B),
                  isSelected: false,
                )
              ],
            ),
          ],
        ),
      ),
      Expanded(
        child: RichText(
            text:
                TextSpan(style: const TextStyle(color: kTextColor), children: [
          const TextSpan(
            text: "Size\n",
          ),
          TextSpan(
              text: "${product.size} cm      ",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.bold))
        ])),
      )
    ]);
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  //by default, isSelected is false
  final bool isSelected;

  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}