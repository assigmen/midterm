import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  Future<bool> register(String username, String password) async {
    final prefs = await SharedPreferences.getInstance();

    // Check if the user already exists
    if (prefs.containsKey(username)) {
      return false; // User already exists
    }

    // Save the user credentials
    await prefs.setString(username, password);
    return true; // Registration successful
  }

  Future<bool> login(String username, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final storedPassword = prefs.getString(username);

    // Validate login credentials
    return storedPassword != null && storedPassword == password;
  }
}
