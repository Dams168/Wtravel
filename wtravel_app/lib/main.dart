import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wtravel_app/screens/dashboard_screen.dart';
import 'package:wtravel_app/screens/splash_screen.dart';
import 'package:wtravel_app/services/favorite_places_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoritePlacesProvider()),
      ],
      child: MaterialApp(
        title: 'WTravel',
        theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: const Color(0xFFF0F3F5),
        ),
        home: const DashboardScreen(),
      ),
    );
  }
}
