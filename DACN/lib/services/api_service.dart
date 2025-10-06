import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  ApiService({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;

  static const String baseHealthUrl =
      'https://backend-dacn-9l4w.onrender.com/health';

  Future<String> checkHealth() async {
    try {
      final response = await _client
          .get(Uri.parse(baseHealthUrl))
          .timeout(const Duration(seconds: 8));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        return data['message']?.toString() ?? 'OK';
      }

      return 'Unhealthy (${response.statusCode})';
    } catch (e) {
      return 'Offline';
    }
  }
}


