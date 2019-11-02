import 'package:flutter/material.dart';
class favorite extends StatelessWidget {
  const favorite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(23),
      decoration: BoxDecoration(color: Colors.white24),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Nothing Added To Favourite !',style:TextStyle(fontSize:30,fontFamily: 'Quicksand',fontWeight: FontWeight.bold),),
         SizedBox(
           child:Padding(padding: EdgeInsets.all(20),),
         ),
         FlatButton(
           
           child: Icon(Icons.hourglass_empty,size: 30,),

         )
        ],
      ),
        

    );
  }
}