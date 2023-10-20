 import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
 
String AUTH_TOKEN = '';

Future<String> get_token() async {
  final client_id = dotenv.env['CLIENT_ID'];
 final client_secret = dotenv.env['CLIENT_SECRET'];
 print(client_id);
    print(client_secret);
 final auth_string = '${client_id}:${client_secret}';
  final auth_64 = base64.encode(utf8.encode(auth_string));
  final url_string = 'accounts.spotify.com';
  final headers = {
    'Authorization': 'Basic ${auth_64}',
    'Content-Type': 'application/x-www-form-urlencoded'
  };
  final data = {'grant_type': 'client_credentials'};
  final url = Uri.https(url_string,'api/token');
  final response = await http.post(url,headers: headers,body: data);
  
    AUTH_TOKEN = json.decode(response.body)['access_token'];
  
  
  print(AUTH_TOKEN);
  return AUTH_TOKEN;
 }