import 'package:flutter/material.dart';
import 'screens/explore_screen.dart';
import 'screens/recipes_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    RecipesScreen(),
    ExploreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Magic of food',
          style: Theme.of(context).textTheme.headline1,),),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories_sharp),
            label: 'Рецепты',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_sharp),
            label: 'Избранное',
          ),

        ],
      ),
    );
  }
}
