import 'package:meal/Screens.dart/filter.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
int onlyOne =0;
class Storage{
  Database database ;
  
  init()async {
    // Directory dir = await getApplicationDocumentsDirectory();
    // final path = join(dir.path,'filter.db');
    database = await openDatabase (
    join(await getDatabasesPath(), 'filter.db'),
      version: 1,
      onCreate: (Database db , version){
        // return db.execute("""
        // CREATE  TABLE Filters
        //  (
        //    id INTEGER PRIMARY KEY,
        //    veg INTEGER,
        //    vegan INTEGER,
        //    lactose INTEGER,
        //    gluten INTEGER,
        //  )
        // """,);
        
        return db.execute(
      "CREATE TABLE Filters(id INTEGER PRIMARY KEY, veg INTEGER, vegan INTEGER, lactose INTEGER, gluten INTEGER)",
    );
      }
    );
    if(onlyOne==0)await{
      onlyOne=1,
    await database.insert('Filters', {
      'id':1,
      'veg':0,
      'vegan':0,
      'lactose':1,
      'gluten':1,
    },
    conflictAlgorithm: ConflictAlgorithm.replace)
    };
    List<Map<String,dynamic>> initialData =await fetch();
    print('Initial Data is $initialData');

  }
  Future<void> update (Map<String,dynamic> filterData,int id)async{
    
    print('data retrieved from filters Screen $filterData');
       
       await database.update
       ('Filters', filterData,
        where: "id = ?",
    
        whereArgs: [id],
       conflictAlgorithm: ConflictAlgorithm.replace);
  }
  Future<List<Map<String,dynamic>>> fetch()async {
    
    final List<Map<String,dynamic >> map = await database.query('Filters');

    return List.generate(map.length, (i){
      return {
        'veg':map[i]['veg'],
        'vegan':map[i]['vegan'],
        'lactose':map[i]['lactose'],
        'gluten ':map[i]['gluten']
      };
    });
  }
}