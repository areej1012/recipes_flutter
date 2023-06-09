import 'package:flutter/material.dart';
import 'package:recipes/model/Instruction.dart';


class StepTile extends StatelessWidget {
  final Instruction data;

  const StepTile({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          (data.display_text != null)
              ? Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    "${data.position}. ${data.display_text}",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                        height: 150 / 100),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
