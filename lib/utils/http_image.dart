import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String?> networkImageToBase64(String imageUrl) async {
  http.Response response = await http.get(Uri.parse(imageUrl));
  final bytes = response.bodyBytes;
  return (bytes != null ? base64Encode(bytes) : null);
}
