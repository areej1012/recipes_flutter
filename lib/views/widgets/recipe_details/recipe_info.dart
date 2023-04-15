import 'package:flutter/material.dart';

import '../../../model/Recipe.dart';

class RecipeInfo extends StatelessWidget {
  final Recipe recipe;
  const RecipeInfo({required this.recipe, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 20,bottom: 30, left: 16, right: 16),
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.star, size: 16,color: Colors.white,),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  recipe.results[0].user_ratings.count_positive.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.schedule, size: 16, color: Colors.white),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  recipe.results[0].cook_time_minutes.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),

            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12, top: 16),
            child: Text(
              recipe.results[0].name,
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'inter'),
            ),
          ),
          // Recipe Description
          Text(
            recipe.results[0].description,
            style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 14, height: 150 / 100),
          ),
        ],
      ),
    );
  }
}
