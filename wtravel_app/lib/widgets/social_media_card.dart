import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wtravel_app/size_config.dart';

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({
    Key? key,
    required this.icon,
    required this.socialMediaName,
  }) : super(key: key);

  final String icon;
  final String socialMediaName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
        height: getProportionateScreenHeight(60),
        width: getProportionateScreenWidth(100),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon, // You can adjust the width as needed
            ),
            const SizedBox(width: 8),
            Text(
              socialMediaName,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
