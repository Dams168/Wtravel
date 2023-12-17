import 'package:flutter/material.dart';
import 'package:wtravel_app/screens/login_screen.dart';
import 'package:wtravel_app/size_config.dart';
import 'package:wtravel_app/widgets/default_button.dart';
import 'package:wtravel_app/widgets/social_media_card.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nama',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Flexible(
                    // Wrap the text in Flexible
                    child: Text(
                      "I accept Privacy Policy + Terms of Use",
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              DefaultButton(
                text: "Daftar",
                press: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
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
                  const Text("Sudah punya akun? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      "Masuk",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
