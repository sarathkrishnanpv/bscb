import 'dart:convert';
import 'package:http/http.dart' as http;

class UltraMsgService {
  final String instanceId = "instance1150"; // Replace with your instance ID
  final String token = "YOUR_API_TOKEN"; // Replace with your token
  final String baseUrl = "https://api.ultramsg.com";

  Future<bool> sendMessage(String to, String message) async {
    final url = "$baseUrl/$instanceId/messages/chat";
    final body = {
      'token': token,
      'to': to,
      'body': message,
    };

    final encodedBody = jsonEncode(body);

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: encodedBody,
      );

      if (response.statusCode == 200) {
        return true; // Message sent successfully
      } else {
        print("Failed to send message: ${response.body}");
        return false;
      }
    } catch (e) {
      print("Error sending message: $e");
      return false;
    }
  }
}
