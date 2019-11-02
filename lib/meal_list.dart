import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'grid_box_maker.dart';
import 'category.dart';
class MealList extends StatefulWidget {
  

  _MealListState createState() => _MealListState();
}

class _MealListState extends State<MealList> {
  @override
  @override
  
    
  
  Widget build(BuildContext context) {
    return GridView(
      children: 
       DUMMY_CATEGORIES.map((f)=>
         GridBoxMaker(f.id,f.title,f.color)
         
      ).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        mainAxisSpacing: 10,
        crossAxisSpacing:7 ,
      )

    );
  }
}