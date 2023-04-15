import 'package:flutter/material.dart';
import 'package:recipes/model/Component.dart';
import 'package:recipes/model/Instruction.dart';
import 'package:recipes/model/Result.dart';
import 'package:recipes/model/Section.dart';
import 'package:recipes/model/UserRatings.dart';
import 'package:recipes/search_delegate.dart';
import 'package:recipes/views/widgets/bottomNavigation/bottomNavigationBar.dart';
import 'package:recipes/views/widgets/recipe/recipe_card.dart';

import '../model/Recipe.dart';


class Home extends StatefulWidget {

  Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.restaurant_menu, color: Colors.amberAccent,),
              SizedBox(width: 10,),
              Text("Food", style: TextStyle(
                  color: Colors.amberAccent, fontWeight: FontWeight.bold),),
              SizedBox(width: 4,),
              Text("Recipes", style: TextStyle(
                  color: Colors.black),)
            ],
          ),
          actions: [
            IconButton(onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            }, icon: const Icon(Icons.search, color: Colors.black,))
          ],
        ),
        bottomNavigationBar: bottomNavigationBar(),
        body: RecipeCard(recipe: Recipe(
          results: [Result(id: 4, name: "My recipe",
          description: "kujhhfvj jjjghvb ",
          cook_time_minutes: 35,
          thumbnail_url: "https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360",
          user_ratings: UserRatings(
              count_negative: 1, count_positive: 4, score: 6),
          sections: [
            Section(components: [
              Component(position: 1, raw_text: "milk"),
              Component(position: 2, raw_text: "egg")
        ])], instructions: [
              Instruction(display_text: "hfhj hyfd kujyv ", position: 1),
              Instruction(display_text: "htghjhjhj ", position: 2)
            ])
          ],))
    );
  }
}
