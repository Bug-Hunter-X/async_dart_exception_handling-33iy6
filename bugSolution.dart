```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print(jsonData);
    } else {
      // Handle different HTTP error codes
      throw HttpException('HTTP error ${response.statusCode}: ${response.reasonPhrase}', response.statusCode);
    }
  } on SocketException {
    // Handle network errors
    print('Network error: Could not connect to the server.');
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
  } on HttpException catch (e) {
    // Handle HTTP errors specifically
    print('HTTP error: ${e.message}, Status code: ${e.statusCode}');
  } catch (e) {
    // Handle other errors
    print('An unexpected error occurred: $e');
  }
}

//Custom Exception for Http
class HttpException implements Exception {
  final String message;
  final int? statusCode;

  HttpException(this.message, [this.statusCode]);

  @override
  String toString() => 'HttpException: $message';
}
```