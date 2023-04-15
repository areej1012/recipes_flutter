
import 'Result.dart';


class Recipe {

  late final List<dynamic> results;

  Recipe({required this.results});

  factory Recipe.fromJson(Map<String, dynamic> dataJson){
    return Recipe(results: dataJson['results']);
  }
}