import 'package:flutter/material.dart';
import 'package:movie_app/models/movies_models.dart';
import 'package:movie_app/servies/api_servies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService service = ApiService();
  List<Movie> movies = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: service.getMovies(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          movies = snapshot.data!;
          return GridView.builder(
            itemCount: movies.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 0.65),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.grey,
              );
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    ));
  }
}
