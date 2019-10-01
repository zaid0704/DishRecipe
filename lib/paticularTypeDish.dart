import 'package:flutter/material.dart';
import 'widgets.dart/content_selected_type.dart';
class ParticularDishes extends StatefulWidget {
  
    
  _ParticularDishesState createState() => _ParticularDishesState();
}

class _ParticularDishesState extends State<ParticularDishes> {
  
  Widget build(BuildContext context) {
    final valsFromMap = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final String id = valsFromMap['id'];
    String title=valsFromMap['title'];
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body:Container(
       child: SelectedTypeDishes(id),
    ),
    );
    
  }
}