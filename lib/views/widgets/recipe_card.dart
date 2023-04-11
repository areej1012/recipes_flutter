import 'package:flutter/material.dart';
import 'package:recipes/views/recipe_details.dart';

import '../../Recipe.dart';


class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard(
      {Key? key,
        required this.recipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context) => RecipeDetails(recipe: recipe,)));},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: Offset(0.0, 10.0),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            )
          ],
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.35), BlendMode.multiply),
              image: NetworkImage(recipe.urlImage),
              fit: BoxFit.cover),),
        child: Stack(
          children: [
            Align(alignment: Alignment.center,child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(recipe.title,
              style: TextStyle(fontSize: 20),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,)
              ,
            ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,size: 18,),
                        SizedBox(width: 7,),
                        Text(recipe.rating)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.schedule,color: Colors.yellow,size: 18,),
                        SizedBox(width: 7,),
                        Text(recipe.cookTime)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
