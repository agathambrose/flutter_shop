import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/body.dart';
import '../../constants.dart';
// import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                colorFilter:
                    const ColorFilter.mode(kTextColor, BlendMode.srcIn),
              ),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                colorFilter:
                    const ColorFilter.mode(kTextColor, BlendMode.srcIn),
              ),
              onPressed: () {}),
          const SizedBox(width: kDefaultPaddin / 2)
        ]);
  }
}
