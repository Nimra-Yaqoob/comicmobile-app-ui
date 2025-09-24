import 'package:flutter/material.dart';

class InputFieldSection extends StatelessWidget {
  const InputFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ComicTextField(
          hint: "Enter your name",
          bubbleColor: Colors.white,
          borderColor: Color(0xFF764BA2),
        ),
        SizedBox(height: 16),

        ComicTextField(
          hint: "Enter your nickname",
          bubbleColor: Color(0xFFFFF3E0),
          borderColor: Color(0xFFFF9800),
        ),
        SizedBox(height: 16),

        ComicTextField(
          hint: "Write your email",
          bubbleColor: Color(0xFFE3F2FD),
          borderColor: Color(0xFF2196F3),
        ),
        SizedBox(height: 16),

        ComicTextField(
          hint: "Make a password",
          obscureText: true,
          bubbleColor: Color(0xFFFCE4EC),
          borderColor: Color(0xFFE91E63),
        ),
        SizedBox(height: 16),

        ComicTextField(
          hint: "Confirm password",
          obscureText: true,
          bubbleColor: Color(0xFFE8F5E9),
          borderColor: Color(0xFF4CAF50),
        ),
      ],
    );
  }
}

/// ---------------- Comic Style TextField with Bounce ----------------
class ComicTextField extends StatefulWidget {
  final String hint;
  final bool obscureText;
  final Color bubbleColor;
  final Color borderColor;

  const ComicTextField({
    super.key,
    required this.hint,
    this.obscureText = false,
    this.bubbleColor = Colors.white,
    this.borderColor = const Color(0xFF764BA2),
  });

  @override
  State<ComicTextField> createState() => _ComicTextFieldState();
}

class _ComicTextFieldState extends State<ComicTextField>
    with SingleTickerProviderStateMixin {
  late FocusNode _focusNode;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 180),
      lowerBound: 0.95,
      upperBound: 1.0,
    );
    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.forward(from: 0.95);
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: Container(
        decoration: BoxDecoration(
          color: widget.bubbleColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: widget.borderColor.withOpacity(0.3),
              blurRadius: 8,
              spreadRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(color: widget.borderColor, width: 2),
        ),
        child: TextField(
          focusNode: _focusNode,
          obscureText: widget.obscureText,
          style: const TextStyle(
            fontFamily: "ComicSansMS",
            fontSize: 15,
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(
              fontFamily: "ComicSansMS",
              fontSize: 14,
              color: Colors.black54,
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 14,
            ),
          ),
        ),
      ),
    );
  }
}
