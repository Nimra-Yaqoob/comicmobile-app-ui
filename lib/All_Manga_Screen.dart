import 'package:flutter/material.dart';
import '../widgets/dashboard_header.dart';

class MangaScreen extends StatelessWidget {
  final List<Map<String, String>> trendingManga = [
    {
      'title': 'Evangelion',
      'chapter': '269',
      'views': '1.2m',
      'image': 'assets/images/evangelion1.png',
    },
    {
      'title': 'Re:Zero',
      'chapter': '67',
      'views': '956k',
      'image': 'assets/images/rezero.png',
    },
    {
      'title': 'Jojo\'s Bizarre',
      'chapter': '122',
      'views': '67k',
      'image': 'assets/images/rezero.png',
    },
    {
      'title': 'Boruto',
      'chapter': '167',
      'views': '932k',
      'image': 'assets/images/rezero.png',
    },
  ];

  final List<Map<String, String>> allManga = [
    {
      'title': 'Kaguya-sama: Love is War',
      'chapter': '269',
      'views': '1.2m',
      'image': 'assets/images/evangelion1.png',
    },
    {
      'title': 'Horimiya',
      'chapter': '67',
      'views': '956k',
      'image': 'assets/images/rezero.png',
    },
    {
      'title': 'Komi san Cant Communicate',
      'chapter': '122',
      'views': '67k',
      'image': 'assets/images/rezero.png',
    },
    {
      'title': 'Boruto',
      'chapter': '167',
      'views': '932k',
      'image': 'assets/images/rezero.png',
    },
  ];

  MangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const DashboardHeader(),
            // ---------------- Search Bar ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'All manga ...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // ---------------- Trending Manga ----------------
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: trendingManga.length,
                itemBuilder: (context, index) {
                  final manga = trendingManga[index];
                  return Container(
                    width: 160,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            manga['image']!,
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 12,
                          left: 12,
                          right: 12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                manga['title']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Next Chapter ${manga['chapter']} • ${manga['views']} Views',
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Color(0xFF6094EA), Color(0xFFF02FC2)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Icon(
                              Icons.cloud_download_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            // ---------------- All Manga List (Small Cards) ----------------
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: allManga.length,
                itemBuilder: (context, index) {
                  final manga = allManga[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            manga['image']!,
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                manga['title']!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Next Chapter ${manga['chapter']} • ${manga['views']} Views',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          margin: const EdgeInsets.only(right: 12),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Color(0xFF6094EA), Color(0xFFF02FC2)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: const Icon(
                            Icons.cloud_download_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
