import 'package:flutter/material.dart';
import 'profile_data.dart'; // yeh import zaroor karna

class GenreSelectionScreen extends StatefulWidget {
  const GenreSelectionScreen({super.key});

  @override
  _GenreSelectionScreenState createState() => _GenreSelectionScreenState();
}

class _GenreSelectionScreenState extends State<GenreSelectionScreen> {
  List<String> selectedGenres = [];

  final List<Map<String, dynamic>> genres = [
    {'label': 'Action', 'image': 'assets/images/action.png'},
    {'label': 'Romance', 'image': 'assets/images/romance.png'},
    {'label': 'Drama', 'image': 'assets/images/drama.png'},
    {'label': 'Horror', 'image': 'assets/images/horror.png'},
    {'label': 'Fantasy', 'image': 'assets/images/fantasy.png'},
    {'label': 'Mistery', 'image': 'assets/images/mistery.png'},
    {'label': 'Magic', 'image': 'assets/images/magic.png'},
    {'label': 'Comedy', 'image': 'assets/images/comedy.png'},
    {'label': 'Daily life', 'image': 'assets/images/dailylife.png'},
    {'label': 'Psychology', 'image': 'assets/images/psychology.png'},
    {'label': 'Adventure', 'image': 'assets/images/adventure.png'},
    {'label': 'Thriller', 'image': 'assets/images/thriller.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Let Us Know!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Choose your genre to find\nfavorite titles here!",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: genres.map((genre) {
                  bool isSelected = selectedGenres.contains(genre['label']);
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedGenres.remove(genre['label']);
                        } else {
                          selectedGenres.add(genre['label']);
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: isSelected
                            ? const LinearGradient(
                                colors: [Color(0xFFA2B2FC), Color(0xFFFFF1BE)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                            : null,
                        color: isSelected ? null : Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            genre['image'],
                            width: 32,
                            height: 32,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            genre['label'],
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileDataScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA2B2FC),
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileDataScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Skip for now",
                      style: TextStyle(color: Colors.grey),
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
