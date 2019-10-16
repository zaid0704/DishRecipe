import 'package:flutter/material.dart';
import 'package:meal/meal_list.dart';
import 'package:meal/paticularTypeDish.dart';
import './Screens.dart/recipe.dart';
import 'tabsScreen.dart';
import './Screens.dart/filter.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final app_bar =AppBar(
      title: Text('Meal'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: (){},
        )
      ],
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.pink[800],
        accentColor: Colors.cyan[600],
      ),
      
      
      home: 
      Scaffold(
        
        body: TabsScreen(),
        
      ),
      routes: {
        '/particularDish':(ctx)=>ParticularDishes(),
        '/recipe':(context)=>Recipe(),
        'filterScreen':(context)=>filter(),
        '/mainScreen':(ctx)=>MealList(),
      },
      );
  }
}

