import 'package:flutter/material.dart';
import 'package:wtravel_app/screens/dashboard_screen.dart';
import 'package:wtravel_app/screens/register_screen.dart';
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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(100)),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 30), // Adjusted spacing
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lupa Password?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(50)),
          DefaultButton(
            text: "Masuk",
            press: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const DashboardScreen()),
              );
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          const Text(
            "--------Atau lanjutkan dengan--------",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
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
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Belum Punya Akun? "),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                child: const Text(
                  "Daftar",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
        ],
      ),
    );
  }
}
