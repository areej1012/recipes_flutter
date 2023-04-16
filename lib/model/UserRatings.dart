class UserRatings {
  final int? count_negative;
  final int? count_positive;
  final num? score;

  UserRatings({required this.count_negative, required this.count_positive, required this.score});

  factory UserRatings.fromJson(Map<String,dynamic>? dataJson){
    return UserRatings(count_negative: dataJson?['count_negative'], count_positive: dataJson?['count_positive'], score: dataJson?['score']);
  }
}