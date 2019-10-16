import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../meal.dart';
class Recipe extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as Map;
    String myId = mealId['id'];
    print(myId);
    //print(mealId);
    final selectedMealRecipe =DUMMY_MEALS.firstWhere((test)=>test.id==myId);
    
    print(selectedMealRecipe);
    
    return Scaffold(
      appBar: AppBar(title:Text(selectedMealRecipe.title)),
      body:SingleChildScrollView(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Image.network(selectedMealRecipe.imageUrl),
          width: double.infinity ,
          height: 300,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
          Text('${selectedMealRecipe.duration}',style:TextStyle(fontSize: 30),)
        ],),
        Text('Ingridients'),
        Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView.builder(
            itemCount:selectedMealRecipe.ingredients.length ,
            itemBuilder: (context,index){
              return Card(
                margin: EdgeInsets.all(10),
                elevation: 6.0,
                child: Text(selectedMealRecipe.ingredients[index]),
              );
            },
          ),
        ),
        Text('Steps'),
        Container(
          width: 300,
          height: 300,
          child: ListView.builder(
            itemCount:selectedMealRecipe.steps.length ,
            itemBuilder: (context,index){
              return Card(
                elevation: 6.0,
                child: Text(selectedMealRecipe.steps[index]),
              );
            },
          ),
        ),
      ],
    ),
      ),
      
    );
    
  }
}