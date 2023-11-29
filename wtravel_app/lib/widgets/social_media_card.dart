import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wtravel_app/size_config.dart';

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({
    super.key,
    this.icon,
    this.name,
    this.press,
  });

  final String? icon;
  final String? name;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(80),
        width: getProportionateScreenWidth(80),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon!,
              height: getProportionateScreenHeight(40),
              width: getProportionateScreenWidth(40),
            ),
            const SizedBox(height: 5),
            Text(
              name!,
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
