import 'package:flutter/material.dart';
import 'package:wtravel_app/constants.dart';
import 'package:wtravel_app/screens/dashboard_screen.dart';
import 'package:wtravel_app/screens/panduan_screen.dart';
import 'package:wtravel_app/screens/perjalanan_koleksi_screen.dart';
import 'package:wtravel_app/screens/profile_screen.dart';

enum MenuState { beranda, perjalanan, panduan, profile }

class ButtonNavBar extends StatelessWidget {
  const ButtonNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFF617986);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.home_filled,
              color: MenuState.beranda == selectedMenu
                  ? bgLightColor
                  : inActiveIconColor,
            ),
            onPressed: () {
              if (selectedMenu != MenuState.beranda) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardScreen(),
                  ),
                );
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.backpack),
            color: MenuState.perjalanan == selectedMenu
                ? bgLightColor
                : inActiveIconColor,
            onPressed: () {
              if (selectedMenu != MenuState.perjalanan) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PerjalananKoleksi(),
                  ),
                );
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu_book),
            color: MenuState.panduan == selectedMenu
                ? bgLightColor
                : inActiveIconColor,
            onPressed: () {
              if (selectedMenu != MenuState.panduan) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PanduanScreen(),
                  ),
                );
              }
            },
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: MenuState.profile == selectedMenu
                  ? bgLightColor
                  : inActiveIconColor,
            ),
            onPressed: () {
              if (selectedMenu != MenuState.profile) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
