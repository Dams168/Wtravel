import 'package:flutter/material.dart';
import 'package:wtravel_app/screens/dashboard_screen.dart';
import 'package:wtravel_app/size_config.dart';
import 'package:wtravel_app/widgets/default_button.dart';
import 'package:wtravel_app/widgets/social_media_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: const LoginForm(),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Login",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email or Username',
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        DefaultButton(
          text: "Login",
          press: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const DashboardScreen()),
            );
          },
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialMediaCard(
              icon: "assets/icons/google.svg",
              socialMediaName: "Google",
            ),
            SocialMediaCard(
              icon: "assets/icons/facebook.svg",
              socialMediaName: "Facebook",
            ),
          ],
        ),
      ],
    );
  }
}
