import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        color: Colors.amberAccent,
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
        child:  GNav(
          backgroundColor: Colors.amberAccent,
          color: Colors.amber,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.white10,
          gap: 8,
          tabs:  [
            GButton(icon: Icons.home_max_rounded,
              text: 'Home',),
            GButton(icon: Icons.favorite_border,
              text: 'Favorite',)
          ],
        ),
      ),
    );
  }
}
