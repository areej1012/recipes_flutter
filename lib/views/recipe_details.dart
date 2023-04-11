import 'package:flutter/material.dart';
import 'package:recipes/Recipe.dart';
class RecipeDetails extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetails({required this.recipe ,Key? key}) : super(key: key);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AnimatedContainer(
          color: Colors.white,
          duration: Duration(milliseconds: 200),
          child: AppBar(
            backgroundColor: Colors.transparent,
            brightness: Brightness.dark,
            elevation: 0,
            centerTitle: true,
            title: Text(widget.recipe.title, style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16),),
          ),
        ),
      ),
    );
  }
}
