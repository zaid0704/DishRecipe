import 'package:flutter/material.dart';
import 'package:meal/widgets.dart/mydrawer.dart';
import '../storage.dart/myfilters_storage.dart';
import 'dart:math';
class filter extends StatefulWidget {
  filter({Key key}) : super(key: key);

  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
 Storage myStorage = Storage();
 
 bool vegeterian =false;
 bool lactose = false ;
 bool vegan =false  ;
 bool gluten =false;
 //dynamic d = 1;
 List<Map<String,dynamic >> map;
 @override
 Future<void> diffmethod()async{
   await myStorage.init();
   map = await myStorage.fetch();
   print('INitiial Datta2 $map');
   print('find eror ${map[0]['lactose']}');
   setState(() {
     vegeterian=map[0]['veg'] ==('1');
    print('veg$vegeterian');
   lactose= (map[0]['lactose'])==('1') ;
  
   vegan=map[0]['vegan']==('1');
   gluten = map[0]['gluten']==('1');
   print('gluten$gluten');
   });
   
 }
 void initState() { 
   super.initState();
    diffmethod();
   }
//   List<Map<String,dynamic >> map;
//  init()async{
//   map = await myStorage.fetch();
//  }
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Filter Screen'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.save),
          onPressed: ()async{
            
            Map<String ,dynamic > filterData = {
              'id':1,
              'veg':vegeterian?1:0,
              'vegan':vegan?1:0,
              'lactose':lactose?1:0,
              'gluten':gluten?1:0
            };
            print('Filters data in filters screen zaid $filterData');
            await myStorage.update(filterData,1);
            List<Map<String,dynamic >> map = await myStorage.fetch();
            print('Stored Data $map');
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