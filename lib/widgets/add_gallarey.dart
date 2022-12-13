import 'package:flutter/material.dart';

Widget Gallery() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage('assets/images/${index}.png'),
            ),
          );
        },
        itemCount: 11,
      ),
    ),
  );
}
