import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';
import 'package:house_rent/widget/circular_icon.dart';

class BestOffer extends StatelessWidget {
  BestOffer({Key? key}) : super(key: key);

  final listOffer = House.generateBestOffer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Offer",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "See All",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...listOffer
              .map(
                (item) => Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(item.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                item.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                item.address,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Positioned(
                        right: 0,
                        child: CircularIconButton(
                          iconUrl: 'assets/icons/heart.svg',
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
