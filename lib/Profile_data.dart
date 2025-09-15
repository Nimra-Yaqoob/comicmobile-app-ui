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

                      // ---------------- Profile Image ----------------
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                              'assets/images/profile1.png',
                            ),
                          ),
                          Positioned(
                            bottom: 4,
                            right: 4,
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF6094EA),
                                    Color(0xFFF02FC2),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
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

                      // ---------------- Input Fields ----------------
                      const CustomTextField(hint: "Enter your name"),
                      const SizedBox(height: 16),
                      const CustomTextField(hint: "Enter your nickname"),
                      const SizedBox(height: 16),
                      const CustomTextField(hint: "Write your email"),
                      const SizedBox(height: 16),
                      const CustomTextField(
                        hint: "Make a password",
                        obscureText: true, // shows ****
                      ),
                      const SizedBox(height: 16),
                      const CustomTextField(
                        hint: "Confirm password",
                        obscureText: true, // shows ****
                      ),
                      const SizedBox(height: 40),

                      // ---------------- Continue Button with Gradient ----------------
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF6094EA), Color(0xFFF02FC2)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Continue",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ---------------- Bottom Profile Indicator ----------------
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
