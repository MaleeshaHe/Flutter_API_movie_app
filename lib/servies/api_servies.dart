import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_app/models/movies_models.dart';

class ApiService {
  final apiKey = "api_key=12e9267e1ffc75c78e425233f747a876";
  final popular = "https://api.themoviedb.org/3/movie/popular?";

  Future<List<Movie>> getMovies() async {
    Response response = await get(Uri.parse("$popular$apiKey"));
    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      List<dynamic> data = body["results"];
      List<Movie> movies = data.map((movie) => Movie.fromJson(movie)).toList();
      return movies;
    } else {
      throw Exception(response.statusCode);
    }
  }
}
