import 'package:flutter/material.dart';
import 'package:wtravel_app/constants.dart';
import 'package:wtravel_app/models/tourism_place.dart';
import 'package:wtravel_app/size_config.dart';

class TourismCard extends StatelessWidget {
  final TourismPlace place;
  final VoidCallback? onTap;

  const TourismCard({Key? key, required this.place, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double cardWidth = SizeConfig.screenWidth * 0.4;

    return InkWell(
      onTap: onTap,
      child: Card(
        child: SizedBox(
          width: cardWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  place.imageAsset,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: getProportionateScreenHeight(90),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        place.name,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.location_on,
                                size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                place.location,
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(10),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: bgDarkColor,
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.star,
                                  size: 16, color: Colors.yellow),
                              const SizedBox(width: 4),
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  place.rating,
                                  style: TextStyle(
                                    color: bgLightColor,
                                    fontSize: getProportionateScreenWidth(10),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
