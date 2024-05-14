class JValidator {
  static RegExp characterRegExp = RegExp(r'[a-zA-Z]');

  static RegExp noNumbersRegExp = RegExp(r'^[0-9]+$');

  static RegExp numericRegExp = RegExp(r'^[0-9]+$');
//--------------------- Empty Text Validator ---------------------

  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  //--------------------- Name Validator ---------------------

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter your name';
    } else if (value[0] == value[0].toLowerCase()) {
      return 'First letter should be Captial';
    } else if (numericRegExp.hasMatch(value)) {
      return 'Name contains digit';
    } else {
      return null;
    }
  }

  //--------------------- Mobile Number Validator ---------------------

  static String? validateMobileNo(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    } else if (characterRegExp.hasMatch(value)) {
      return 'Phone number contains letters';
    } else if (value.length != 10) {
      return ' valid phone number is required';
    } else {
      return null;
    }
  }

//--------------------- Email Validator ---------------------

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

//--------------------- Password Validator ---------------------

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }
}
