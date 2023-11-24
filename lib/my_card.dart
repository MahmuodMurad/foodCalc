


import 'package:flutter/material.dart';

import 'foods.dart';

Widget MyCard({required Recipe recipe}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 330,
      child: Card(
        elevation: 2.0,
        color: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
              child:  Image(
                height: 260,
                width: double.infinity,
                fit: BoxFit.fill,
                image: NetworkImage(
                    recipe.imageUrl,),
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            Text(
              recipe.label,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    ),
  );

}