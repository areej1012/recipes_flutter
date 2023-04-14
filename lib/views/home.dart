import 'package:flutter/material.dart';
import 'package:recipes/search_delegate.dart';
import 'package:recipes/views/widgets/bottomNavigation/bottomNavigationBar.dart';
import 'package:recipes/views/widgets/recipe/recipe_card.dart';

import '../model/Recipe.dart';
import '../model/ingridient.dart';
import '../model/tutorial_step.dart';

class Home extends StatefulWidget {

   Home({Key? key}) : super(key: key);
  final List<Ingridient> ingridient = [Ingridient("test","1"),Ingridient("tesst test ","2"),Ingridient("trddt ","3")];
   final List<TutorialStep> tutorialStep = [TutorialStep("1","jkjwlkjnldsej eskhfkejds kjhfkjhgnb hjgvh  hjfvb nf efksfne,kes f"),TutorialStep("2","skjhdfkjhfkjfd dskfvsjkgr,md test "),TutorialStep("3","dfskluhdskjciukdjnfedskujsdks ")];


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
        bottomNavigationBar: bottomNavigationBar(),
        body: RecipeCard( recipe : Recipe(id: 442, title: "My recipe", content: "mhgfmhvmjb,jb jhbgjfhg  mhjfvktdrsxx ;otes sjjg fcgfjjhgj yjtdhgfjhgb kudfhgf kjtfthf jgffhjgj",
             cookTime: "30 min",
             rating: 4.5,
            urlImage: "https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360",
            ingridient: widget.ingridient,
          tutorialStep: widget.tutorialStep, ))
    );
  }
}
