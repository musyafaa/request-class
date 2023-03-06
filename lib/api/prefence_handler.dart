import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  static Future<void> storingUser(String user) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("user", user);
  }

  static Future<String?> getUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? result = preferences.getString("user");
    return result;
  }

  static Future<void> removeUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("user");
  }

}
