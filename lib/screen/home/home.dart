import 'package:flutter/material.dart';
import 'package:house_rent/screen/home/widget/best_offer.dart';
import 'package:house_rent/screen/home/widget/categories.dart';
import 'package:house_rent/screen/home/widget/custom_app_bar.dart';
import 'package:house_rent/screen/home/widget/recommended_house.dart';
import 'package:house_rent/screen/home/widget/serach_input.dart';
import 'package:house_rent/screen/home/widget/welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const WelcomeText(),
            const SearchInput(),
            const Categories(),
            RecommendedHouse(),
            BestOffer()
          ],
        ),
      ),
    );
  }
}
