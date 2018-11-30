class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }

    return null;
  }

  String validateUsername(String value) {
    if (value.isEmpty) {
      return 'Please enter a username';
    }

    return null;
  }

  String validateFirstname(String value) {
    if (value.isEmpty) {
      return 'Please enter your firstname';
    }

    return null;
  }

  String validateLastname(String value) {
    if (value.isEmpty) {
      return 'Please enter your last name';
    }

    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be at least 4 characters';
    }

    return null;
  }
}