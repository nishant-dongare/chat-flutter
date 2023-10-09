import 'dart:io';

Future<bool> checkUserConnection() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    print(result);
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on Exception catch (_) {}
  return false;
}
