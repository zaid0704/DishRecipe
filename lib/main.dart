import 'package:flutter/material.dart';
import 'package:meal/paticularTypeDish.dart';
import 'meal_list.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: Scaffold(
        appBar: app_bar,
        body: MealList(),
        
      ),
      routes: {
        '/particularDish':(ctx)=>ParticularDishes()
      },
      );
  }
}
