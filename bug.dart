```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonData = json.decode(response.body);
      // Process jsonData
      print(jsonData); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle error
    print('Error: $e');
    // The error is not properly handled, especially network exceptions.
    // Consider more specific error handling for different potential issues.
  }
}
```