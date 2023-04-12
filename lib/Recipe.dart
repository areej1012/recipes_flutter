import 'package:recipes/tutorial_step.dart';

import 'ingridient.dart';

class Recipe{
  final String title;
  final String rating;
  final String cookTime;
  final String urlImage;
  final String content;
  final List<Ingridient> ingridient;
  final List<TutorialStep> tutorialStep;

  Recipe(this.title,this.content, this.rating, this.cookTime, this.urlImage, this.ingridient, this.tutorialStep);

}