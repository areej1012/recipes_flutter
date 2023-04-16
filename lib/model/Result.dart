import 'Instruction.dart';
import 'Section.dart';
import 'UserRatings.dart';

class Result{
  final int? id;
  final String? name;
  final String? description;
  final int? cook_time_minutes;
  final String? thumbnail_url;
  final UserRatings? user_ratings;
  final List<dynamic>? sections;
  final  List<dynamic>? instructions;


  Result({required this.id, required this.name, required this.description, required this.cook_time_minutes, required this.thumbnail_url, required this.user_ratings, required this.sections, required this.instructions});

  factory Result.fromJson(Map<String, dynamic> dataJson){
    return Result(id: dataJson['id'], name: dataJson['name'], description: dataJson['description'], cook_time_minutes: dataJson['cook_time_minutes'], thumbnail_url: dataJson['thumbnail_url'], user_ratings: UserRatings.fromJson(dataJson['user_ratings']), sections: dataJson['sections'], instructions: dataJson['instructions']);
  }
}