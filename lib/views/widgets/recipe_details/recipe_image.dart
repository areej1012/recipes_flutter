import 'package:flutter/material.dart';

import '../../../AppColor.dart';

class RecipeImage extends StatelessWidget {
  final String urlImage;
  const RecipeImage({required this.urlImage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(urlImage),fit: BoxFit.cover)),
        child: Container(
    decoration: BoxDecoration(gradient: AppColor.linearBlackTop),
    height: 280,
    width: double.infinity,
    ),
    );
  }
}
