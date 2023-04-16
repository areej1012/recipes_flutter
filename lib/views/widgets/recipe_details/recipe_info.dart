import 'package:flutter/material.dart';
import 'package:recipes/model/Result.dart';

import '../../../model/Recipe.dart';

class RecipeInfo extends StatelessWidget {
  final Result result;
  const RecipeInfo({required this.result, Key? key}) : super(key: key);

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
                  result.user_ratings?.count_positive.toString() ?? "0.0",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.schedule, size: 16, color: Colors.white),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  result.cook_time_minutes.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),

            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12, top: 16),
            child: Text(
              result.name ?? "wohtout",
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'inter'),
            ),
          ),
          // Recipe Description
          Text(
            result.description ?? "null",
            style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 14, height: 150 / 100),
          ),
        ],
      ),
    );
  }
}
