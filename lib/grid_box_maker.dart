import 'package:flutter/material.dart';
class GridBoxMaker extends StatelessWidget {
  final String id ;
  final String title;
  final Color color;
  GridBoxMaker(this.id,this.title,this.color);
  
  @override
  Widget build(BuildContext context) {
    
    // return Container (
    //   child: Text('hello'),
    // );
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('/particularDish',arguments: {
          'id':id,
          'title':title,
        });
      },
      splashColor: Colors.orange,
      borderRadius: BorderRadius.circular(15),
      child: Container(
      child: Text(title), 
      padding: const EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7),
                  color],
          begin:Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
    ),
    );
    
  }
}