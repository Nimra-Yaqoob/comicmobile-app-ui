import 'package:flutter/material.dart';

class ContinueReading extends StatelessWidget {
  const ContinueReading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10), // 👈 thoda kam padding
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 130, // 👈 height kam
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: const DecorationImage(
                image: AssetImage('assets/images/continue_bg.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            clipBehavior: Clip.hardEdge,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 👇 space kam
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Center(
                  child: Image.asset(
                    'assets/images/white_home.png',
                    height: 4,
                    width: 70,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 12, bottom: 4),
                child: Text(
                  "Continue Reading",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),

              Center(
                child: Container(
                  height: 65, // 👈 kam kiya
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/images/evangelio.png',
                          width: 42,
                          height: 42,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Evangelion",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Chapter 89",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
