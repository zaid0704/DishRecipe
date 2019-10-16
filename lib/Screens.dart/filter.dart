import 'package:flutter/material.dart';
class filter extends StatefulWidget {
  filter({Key key}) : super(key: key);

  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
  @override
 bool vegeterian =false;
 bool lactose = true ;
 bool vegan =true;
 bool gluten =false;
  void mySwitchVal(bool currentValue){

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filter Screen'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.save),
          onPressed: (){
            Navigator.of(context).popAndPushNamed('mainScreen');
          },
        )
      ],),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: Text('Vegeterian'),
            subtitle: Text('Only Vegeterian'),
            value: vegeterian,
            onChanged: (val){
              setState(() {
                vegeterian=val;
              });
              
            },
          ),
          SwitchListTile(
            title: Text('Gluten Free'),
            subtitle: Text('Only Gluten Free'),
            value: gluten,
            onChanged: (val){setState(() {
             gluten=val; 
            });},
          ),
          SwitchListTile(
            title: Text('Lactose Free'),
            subtitle: Text('Only Lactose Free'),
            value: lactose,
            onChanged: (val){
              setState(() {
               lactose=val; 
              });
            },
          ),
          SwitchListTile(
            title: Text('Vegan'),
            subtitle: Text('Only Vegen'),
            value: vegan,
            onChanged: (val){
              setState(() {
               vegan=val; 
              });
            },
          ),
        ],
      ),
    );
    
  }
  
}