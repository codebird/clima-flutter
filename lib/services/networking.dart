import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  String urlString;
  NetworkHelper(this.urlString);

  Future<Map<String, dynamic>> getData() async {
    Uri url = Uri.parse(
      urlString,
    );
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    return null;
  }
}
