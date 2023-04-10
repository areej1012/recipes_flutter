import 'dart:ffi';

import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = " ";
              }
            },
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: transitionAnimation,
            ))
      ];

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(
              fontSize: 64, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = ['Cake', 'Egg', 'Banana', 'Lunch'];
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        });
  }
}
