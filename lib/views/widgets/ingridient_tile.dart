import 'package:flutter/material.dart';

import '../../ingridient.dart';

class IngridientTile extends StatelessWidget {
  final Ingridient data;

  const IngridientTile({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Container(
                width: 30,
                height: 30,
                child: Center(
                  child: Text(
                    data.position,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[350]),
              ),
            ),
            SizedBox(width: 8,),
            Flexible(
              flex: 9,
              child: Text(
                data.name,
                style: TextStyle( color: Colors.black,
                    fontSize: 14, fontWeight: FontWeight.w600, height: 150 / 100),
              ),
            )
          ],
        ),
      ),
    );
  }
}
