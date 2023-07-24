import 'package:flutter/material.dart';
import 'package:movie_app/servies/api_servies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService service = ApiService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    service.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Maleesha"),
      ),
    );
  }
}
