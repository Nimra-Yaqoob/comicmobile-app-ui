import 'package:flutter/material.dart';

class MangaDetailPage extends StatelessWidget {
  final String title;
  final String image;

  const MangaDetailPage({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.more_vert, color: Colors.black),
          SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          // 🔥 Gradient + Cover Image Header
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6094EA), Color(0xFFF02FC2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    image, // 👈 dynamic image
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title, // 👈 dynamic title
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // 🔥 Tabs Section
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6094EA), Color(0xFFF02FC2)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    alignment: Alignment.center,
                    child: const Text(
                      "Manga",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    alignment: Alignment.center,
                    child: const Text(
                      "Characters",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // 🔥 Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Character Card
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),
                            child: Image.asset(
                              "assets/images/character.png",
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Komi san",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Main character",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                  "Suspendisse molestie est nec gravida dictum. Nunc dictum lectus quam, "
                                  "non maximus urna ornare sit amet.",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 🔥 Read Now Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 14,
                          ),
                          backgroundColor: const Color(0xFF6094EA),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          "Read now",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),

          // 🔥 Bottom Home Indicator
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
    );
  }
}
