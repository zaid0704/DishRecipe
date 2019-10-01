import 'package:flutter/material.dart';
import '../meal.dart';
class Recipe extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final vals = ModalRoute.of(context).settings.arguments as Map;
    final url =vals['url'];
    List<String> steps = vals['steps'];
    
    return Scaffold(
      appBar: AppBar(title:Text('Recipe')),
      body: recipes(url, steps),
    );
    
  }
  Widget recipes(url,steps){
    return Column(
      children: <Widget>[
        Container(child: Image.network(url),),
        //Container(child: Text(steps)),
      ],
    );

  }
}