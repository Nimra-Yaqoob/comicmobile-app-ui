import 'package:comic_moobile/widgets/home_indicator.dart';
import 'package:flutter/material.dart';
import 'package:comic_moobile/widgets/input_field_section.dart';
import 'package:comic_moobile/widgets/profile_image.dart';
import 'package:comic_moobile/widgets/gradient_button.dart';

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
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ProfileImage(),
                    const SizedBox(height: 20),

                    /// Input Fields
                    const InputFieldSection(),
                    const SizedBox(height: 20),

                    /// Continue Button
                    GradientButton(
                      text: "Continue",
                      width: double.infinity,
                      height: 48,
                      gradientColors: const [
                        Color(0xFF667EEA),
                        Color(0xFF764BA2),
                      ],
                      onPressed: () {
                        debugPrint("Continue pressed!");
                      },
                    ),
                  ],
                ),
              ),
            ),
            const HomeIndicator(),
          ],
        ),
      ),
    );
  }
}
