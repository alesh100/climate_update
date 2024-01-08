import

'package:http/http.dart'

as http;
import

'dart:convert';

class

NetworkHelper

{
  NetworkHelper(this.url);

  final

  String url;

  Future<dynamic> getData() async {
    try {
      http.Response response = await http.get(url as Uri);

      if (response.statusCode == 200) {
        String data = response.body;
        return jsonDecode(data);
      } else {
        throw Exception("Failed to fetch data. Status code: ${response.statusCode}");
      }
    } catch (e) {
      // Handle errors here, e.g., display an error message
      print("Error fetching data: $e");
      return null; // Or return a custom error object
    }
  }
}