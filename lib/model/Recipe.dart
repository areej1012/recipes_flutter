import 'package:recipes/model/tutorial_step.dart';

import 'ingridient.dart';

class Recipe {
  final int id;
  final String title;
  final double rating;
  final String cookTime;
  final String urlImage;
  final String content;
  final List<Ingridient> ingridient;
  final List<TutorialStep> tutorialStep;

  Recipe(
      {required this.id, required this.title, required this.content, required this.rating, required this.cookTime, required this.urlImage, required this.ingridient, required this.tutorialStep});

  factory Recipe.fromJson(Map<String, dynamic> dataJson){
    return Recipe(id: dataJson['id'],
        title: dataJson['name'],
        content: dataJson['description'],
        rating: dataJson['count_positive'],
        cookTime: dataJson['cook_time_minutes'],
        urlImage: dataJson['thumbnail_url'],
        ingridient: dataJson['components'],
        tutorialStep: dataJson['instructions']);
  }
}