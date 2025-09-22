class Validators {
  static String? validateUsername(String? value) {
    if (value == null || value.trim().isEmpty) return "Username is required";
    if (value.trim().length < 3) return "Minimum 3 characters required";
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) return "Email is required";
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(value.trim())) return "Enter a valid email";
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return "Password is required";
    if (value.length < 8) return "Minimum 8 characters required";
    if (!RegExp(r'[A-Z]').hasMatch(value)) return "At least 1 uppercase letter";
    if (!RegExp(r'[a-z]').hasMatch(value)) return "At least 1 lowercase letter";
    if (!RegExp(r'\d').hasMatch(value)) return "At least 1 digit";
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return "At least 1 special character (!@#\$&*~)";
    }
    return null;
  }
}
