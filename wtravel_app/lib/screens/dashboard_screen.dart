import 'package:flutter/material.dart';
import 'package:wtravel_app/widgets/button_navbar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ButtonNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        title: Text('Dashboard Screen'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          buildDashboardItem('Bromo', Icons.home),
          buildDashboardItem('Pantai', Icons.beach_access),
          buildDashboardItem('Nusa Penida', Icons.bolt),
          buildDashboardItem('Artikel Untuk Kamu', Icons.book),
        ],
      ),
    );
  }

  Widget buildDashboardItem(String title, IconData icon) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48.0),
          SizedBox(height: 8.0),
          Text(title),
        ],
      ),
    );
  }
}
