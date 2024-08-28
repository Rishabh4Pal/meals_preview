import 'package:flutter/material.dart';
import 'package:meals_preview/models/category_model.dart';

class CategoryGridItems extends StatelessWidget {
  const CategoryGridItems({required this.onSelectCategory, required this.category, super.key});
  final Category category;
  final void Function() onSelectCategory;
  @override
  Widget build(BuildContext context) {
    /*InkWell is used to make a widget(Like, container, sizedBox) 
      cilckable, and give touch feedback to the user.
    */
    return InkWell( 
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            category.color.withOpacity(1),
            category.color.withOpacity(.5),
          ], begin: Alignment.bottomRight, end: Alignment.topLeft),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Center(
          child: Text(category.title),
        ),
      ),
    );
  }
}
