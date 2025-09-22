import 'package:comic_moobile/widgets/gradient_icon_button.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/gradient_button.dart';
import '../widgets/title_text.dart';
import '../utils/validators.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sign.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.4)),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TitleText('Join the Fun!'),
                      const SizedBox(height: 40),

                      CustomTextField(
                        controller: _usernameController,
                        hintText: 'Username',
                        validator: Validators.validateUsername,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Email',
                        validator: Validators.validateEmail,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                        obscureText: true,
                        validator: Validators.validatePassword,
                      ),
                      const SizedBox(height: 30),

                      GradientButton(
                        text: 'Sign Up',
                        width: 220,
                        height: 50,
                        gradientColors: [Color(0xFF6094EA), Color(0xFFF02FC2)],
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            String username = _usernameController.text;
                            String email = _emailController.text;
                            String password = _passwordController.text;
                            print("Sign Up: $username, $email, $password");
                          } else {
                            print("Validation failed");
                          }
                        },
                      ),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          GradientIconButton(
                            icon: Icons.apple,
                            gradientColors: [
                              Color(0xFF6094EA),
                              Color(0xFFF02FC2),
                            ],
                          ),
                          SizedBox(width: 20),
                          GradientIconButton(
                            icon: Icons.g_mobiledata,
                            gradientColors: [
                              Color(0xFF6094EA),
                              Color(0xFFF02FC2),
                            ],
                          ),
                          SizedBox(width: 20),
                          GradientIconButton(
                            icon: Icons.facebook,
                            gradientColors: [
                              Color(0xFF6094EA),
                              Color(0xFFF02FC2),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Already have an account? Login",
                          style: TextStyle(
                            fontFamily: 'ComicSansMS',
                            color: Colors.yellowAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
