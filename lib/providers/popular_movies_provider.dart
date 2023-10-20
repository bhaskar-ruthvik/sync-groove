import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

var POPULAR_MOVIES_LIST = [];

Future<List> getMovies() async {
    final apiKey = dotenv.env['TMDB_API_KEY'];
    print(apiKey);

    final url = Uri.https('api.themoviedb.org','3/movie/popular', {
    'language': 'en-US',
    'page' : '1'
  });
    final headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer ${apiKey}'
  };
   final res = await http.get(url,headers: headers);
   POPULAR_MOVIES_LIST = json.decode(res.body)['results'];
   print(POPULAR_MOVIES_LIST);
   return POPULAR_MOVIES_LIST;
  }
