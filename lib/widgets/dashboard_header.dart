import 'package:flutter/material.dart';
import '../Category.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/profile1.png'),
              ),
              Positioned(
                right: -6,
                top: -2,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF6094EA), Color(0xFFF02FC2)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Stay trending!", style: TextStyle(color: Colors.grey)),
              Text(
                "Illia Frunza",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GenreSelectionScreen()),
              );
            },
            child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 18,
              backgroundImage: AssetImage('assets/images/icon.png'),
            ),
          ),
        ],
      ),
    );
  }
}
