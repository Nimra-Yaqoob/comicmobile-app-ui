import 'package:comic_moobile/widgets/Input_fields.dart';
import 'package:flutter/material.dart';

class ProfileDataScreen extends StatelessWidget {
  const ProfileDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey,
                          ),
                          Positioned(
                            bottom: 4,
                            right: 4,
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFA2B2FC),
                                    Color(0xFFFFF1BE),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const CustomTextField(hint: "Enter your name"),
                      const SizedBox(height: 16),
                      const CustomTextField(hint: "Enter your nickname"),
                      const SizedBox(height: 16),
                      const CustomTextField(hint: "Write your email"),
                      const SizedBox(height: 16),
                      const CustomTextField(
                        hint: "Make a password",
                        obscureText: true,
                      ),
                      const SizedBox(height: 16),
                      const CustomTextField(
                        hint: "Confirm password",
                        obscureText: true,
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Continue",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
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
    );
  }
}
