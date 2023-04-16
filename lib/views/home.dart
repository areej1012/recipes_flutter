import 'package:flutter/material.dart';
import 'package:recipes/model/Component.dart';
import 'package:recipes/model/Instruction.dart';
import 'package:recipes/model/Result.dart';
import 'package:recipes/model/Section.dart';
import 'package:recipes/model/UserRatings.dart';
import 'package:recipes/services/recipe_service.dart';
import 'package:recipes/views/widgets/bottomNavigation/bottomNavigationBar.dart';
import 'package:recipes/views/widgets/recipe/recipe_card.dart';

import '../delegates/search_delegate.dart';
import '../model/Recipe.dart';


class Home extends StatefulWidget {

  Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Result>? result;
  var isLoading= false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  getData() async {
    result = await RecipeApi().fetchResult();
    print(result?.isEmpty);
    if(result != null){
      setState(() {
        isLoading = true;
      });
    }
  }
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
        body: Visibility(
          visible: isLoading,
          replacement: const Center(child: CircularProgressIndicator(),),
          child: ListView.builder(itemBuilder: (content,index){
            return RecipeCard(result: result![index]);
          }, itemCount: result?.length,)
          ,
        )
    );
  }
}
/*)*/