import 'dart:io';

mixin CheckConnection {
  Future<bool> checkConnection() async {
    try {
      final result = await InternetAddress.lookup("google.com");
      return true;
    } catch (e) {
      return false;
    }
  }
}
