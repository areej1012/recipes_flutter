import 'package:flutter/material.dart';
import 'package:recipes/search_delegate.dart';
import 'package:recipes/views/widgets/recipe_card.dart';

import '../Recipe.dart';
import '../ingridient.dart';
import '../tutorial_step.dart';

class Home extends StatefulWidget {

   Home({Key? key}) : super(key: key);
  final List<Ingridient> ingridient = [Ingridient("test","1"),Ingridient("tesst test ","2"),Ingridient("trddt ","3")];
   final List<TutorialStep> tutorialStep = [TutorialStep("1","jkjwlkjnldsej eskhfkejds kjhfksnf efksfne,kes f"),TutorialStep("2","skjhdfkjhfkjfd dskfvsjkgr,md test "),TutorialStep("3","dfskluhdskjciukdjnfedskujsdks ")];


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
        body: RecipeCard( recipe : Recipe("My recipe", "mhgfmhvmjb,jb jhbgjfhg  mhjfvktdrsxx ;otes sjjg fcgfjjhgj yjtdhgfjhgb kudfhgf kjtfthf jgffhjgj",
             "30 min",
             "4.5",
            "https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360",
        widget.ingridient,
        widget.tutorialStep))
    );
  }
}
