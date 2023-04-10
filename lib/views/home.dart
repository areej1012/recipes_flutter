import 'package:flutter/material.dart';
import 'package:recipes/search_delegate.dart';
import 'package:recipes/views/widgets/recipe_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

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
              Text("Recipes",style :TextStyle(
                  color: Colors.black),)
            ],
          ),
          actions: [
            IconButton(onPressed: (){
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            }, icon: const Icon(Icons.search,color: Colors.black,))
          ],
        ),
        body: RecipeCard(title: "My recipe",
          cookTime: "30 min",
          rating: "4.5",
          urlImage: "https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360",)
    );
  }
}
