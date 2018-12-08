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

  String validateArtistName(String value) {
    if (value.isEmpty) {
      return 'Please enter your Artist name';
    }

    return null;
  }

  String validateManagerName(String value) {
    if (value.isEmpty) {
      return 'Please enter your Record name';
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