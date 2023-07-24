import 'package:movie_app/models/company_models.dart';

class MovieDetailsModel {
  bool? isAdult;
  String? tagLine;
  List<Company>? company;

  MovieDetailsModel({this.company, this.isAdult, this.tagLine});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    List<Company> companies = (json['production_companies'] as List)
        .map((company) => Company.fromJson(company))
        .toList();

    return MovieDetailsModel(
      company: companies,
      isAdult: json['adult'],
      tagLine: json['tagline'],
    );
  }
}
