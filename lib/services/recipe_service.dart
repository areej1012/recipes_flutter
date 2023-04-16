import 'dart:convert';

import 'package:recipes/model/Recipe.dart';

import '../model/Result.dart';
import 'package:http/http.dart' as http;

class RecipeApi{

  final String apikey = "ee2910ae78msh399d42634f316dep17edd4jsnb7ea7db7476e";
  Future<List<Result>?> fetchResult() async {
    try {
      http.Response response = await http.get(Uri.parse(
          'https://tasty.p.rapidapi.com/recipes/list?rapidapi-key=$apikey'));
      if(response.statusCode == 200){
        String data = response.body;
        var jsonData = jsonDecode(data);
        Recipe recipe = Recipe.fromJson(jsonData);
        List<Result> resultList = recipe.results.map((e) => Result.fromJson(e)).toList();
        return resultList;
      }
      else{
        print("status code = ${response.statusCode}" );
        throw Exception('Failed to load recipes');
      }
    }
    catch
    (e){
      print("errror is ${e.toString()}");
    }
    return null;
  }


}