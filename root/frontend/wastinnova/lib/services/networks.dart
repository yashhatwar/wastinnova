import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// var client = http.Client();
// var url = Uri.parse('http://localhost:8000/');
// var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
// print('Response status: ${response.statusCode}');
// print('Response body: ${response.body}');

// print(await http.read(Uri.parse('https://example.com/foobar.txt')));
// try {
//   var response = await client.post(
//       Uri.https('example.com', 'whatsit/create'),
//       body: {'name': 'doodle', 'color': 'blue'});
//   var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
//   var uri = Uri.parse(decodedResponse['uri'] as String);
//   print(await client.get(uri));
// } finally {
//   client.close();
// }