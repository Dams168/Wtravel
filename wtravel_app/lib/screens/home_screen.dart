import 'package:flutter/material.dart';
import 'package:wtravel_app/constants.dart';
import 'package:wtravel_app/screens/login_screen.dart';
import 'package:wtravel_app/screens/register_screen.dart';
import 'package:wtravel_app/size_config.dart';
import 'package:wtravel_app/widgets/default_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  const Text(
                    "WTravel",
                    style: TextStyle(
                      fontSize: 36,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    "assets/images/home.png",
                    height: getProportionateScreenHeight(265),
                    width: getProportionateScreenWidth(235),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Temukan Destinasi Impian \n Anda Bersama Kami",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  DefaultButton(
                    text: "Daftar",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const RegisterScreen();
                        }),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
                        }),
                      );
                    },
                    child: const Text(
                      "Sudah memiliki akun? Masuk",
                      style: TextStyle(
                        fontSize: 20,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
