import 'package:flutter/material.dart';
import 'favourite.dart';
import 'meal_list.dart';
import './widgets.dart/mydrawer.dart';
class TabsScreen extends StatefulWidget {
  

  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      
      child: Scaffold(
        appBar: AppBar(title: Text('Meal'),
        
        bottom: TabBar(
          
          indicatorColor: Colors.purple,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.category),text: 'Categories',),
            Tab(icon:Icon(Icons.favorite),text: 'Favourite',)
          ],
        ),),body: TabBarView(
          children: <Widget>[
            MealList(),
            favorite(),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 0,
        //   elevation: 8.0,
        //   type: BottomNavigationBarType.shifting,
        //   backgroundColor: Colors.redAccent,
        //   selectedItemColor: Colors.yellow,
          
        //   unselectedItemColor: Colors.white,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.category),
        //       title: Text('Category')
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.favorite),
        //       title: Text('Favorite')
        //     )
        //   ],
        // ),
        drawer:myDrawer(),

      ),
    );
  }
}