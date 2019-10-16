import 'package:flutter/material.dart';
import '../paticularTypeDish.dart';
import '../dummy_data.dart';
class SelectedTypeDishes extends StatelessWidget {
  final String id;
  SelectedTypeDishes(this.id);
  // bool filter(test,filters){

  // }
  Widget build(BuildContext context) {
    final myList = DUMMY_MEALS.where((test){
      return test.categories.contains(id);
    }).toList();
    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (context,index){
        return InkWell(
          child: BeautifulCard(myList,index),
          onTap: (){
            print('hi${myList[index].id}');
             Navigator.of(context).pushNamed('/recipe',arguments: {'id':myList[index].id});
            
          },
         
        );
        
      },
    );
  }
  Widget BeautifulCard(List myList,int index){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius:BorderRadius.only(
                  topLeft:Radius.circular(15),
                  topRight: Radius.circular(15),
                  
                ),
                child: Image.network(myList[index].imageUrl),

              ),
              Text(myList[index].title)
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Text('${myList[index].duration}'),
              Padding(
                padding: EdgeInsets.only(right: 20),
              ),
              Text('${myList[index].affordability}'),
            ],
          )
        ],
      ),
    );
  }
}