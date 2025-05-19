// categories.dart er eto boro code
// ekta widget e jeno na ana lage

import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget {

  const CategoryGridItem({
    super.key, 
    required this.category,});

  final Category category;


  @override
  Widget build(BuildContext context) {
    return InkWell( //feedback pawa jai after tap
      onTap: () {},
      
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          )
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}