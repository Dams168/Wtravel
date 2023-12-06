import 'package:flutter/material.dart';
import 'package:wtravel_app/constants.dart';
import 'package:wtravel_app/screens/perjalanan_koleksi_screen.dart';
import 'package:wtravel_app/screens/perjalanan_simpan_screen.dart';
import 'package:wtravel_app/widgets/button_navbar.dart';

class Perjalanan extends StatefulWidget {
  const Perjalanan({Key? key}) : super(key: key);

  @override
  _PerjalananState createState() => _PerjalananState();
}

class _PerjalananState extends State<Perjalanan>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Tab buildTab(String label, String imagePath) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 24,
            width: 24,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 5),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F5),
      appBar: AppBar(
        title: const Text(
          'Perjalanan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          TabBar(
            controller: _tabController,
            labelColor: primaryColor,
            unselectedLabelColor: const Color(0xFFC2C5D6),
            tabs: [
              buildTab('Koleksi', 'assets/icons/perjalanan-koleksi-blue.png'),
              buildTab('Simpan', 'assets/icons/perjalanan-simpan-blue.png'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                PerjalananKoleksi(),
                PerjalananSimpan(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          const ButtonNavBar(selectedMenu: MenuState.perjalanan),
    );
  }
}
