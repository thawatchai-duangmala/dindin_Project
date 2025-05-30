import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final int catId;
  final String categoryName;

  const Categories({
    super.key,
    required this.catId,
    required this.categoryName,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {   
    return Container( 
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: TextButton(
        onPressed: () {},
        child: Text(widget.categoryName, style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
