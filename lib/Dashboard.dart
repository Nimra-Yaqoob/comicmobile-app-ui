import 'package:flutter/material.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/search_bar.dart';
import '../widgets/trending_manga.dart';
import '../widgets/readers_list.dart';
import '../widgets/continue_reading.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const DashboardHeader(),
            const SearchBarWidget(),
            const TrendingManga(),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFA2B2FC), Color(0xFFFFF1BE)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(28),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReadersList(
                              readers: [
                                {"name": "minato_n", "image": "assets/images/user1.png"},
                                {"name": "meliod4s", "image": "assets/images/user2.png"},
                                {"name": "el_pudgo", "image": "assets/images/user3.png"},
                                {"name": "resler01", "image": "assets/images/user4.png"},
                              ],
                            ),
                            const ContinueReading(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, top: 4),
                      child: Center(
                        child: Image.asset(
                          'assets/images/home_indicator.png',
                          height: 5,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
