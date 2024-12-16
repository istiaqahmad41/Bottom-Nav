import 'package:flutter/material.dart';

void main() {
  runApp( Bottom_Navigation_bar_26_demo());
}

class Bottom_Navigation_bar_26_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;  // To keep track of the selected tab
  final List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
    favouritescreen()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Example'),
      ),
      body: _pages[_currentIndex],  // Display the current tab content
      bottomNavigationBar: BottomNavigationBar(


        onTap: onTabTapped,
        // Handle tab selection
        currentIndex: _currentIndex,  // Set the currently selected tab
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            //backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.green,
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
           // backgroundColor: Colors.redAccent,
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

          BottomNavigationBarItem(
            //backgroundColor: Colors.pink,
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          )





        ],
      ),
    );
  }
}

//-------

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

//--------

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

//------

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
class favouritescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favourite Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

//-----MMM---