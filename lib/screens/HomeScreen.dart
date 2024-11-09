import 'package:flutter/material.dart';
import 'CategoryScreen.dart'; // Ensure CategoryScreen is imported
import 'NewsScreen.dart'; // Assuming you have this screen
import 'MyPostsScreen.dart'; // Assuming this exists

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    // Replace these with your actual screens
    CategoryScreen(),
    NewsScreen(),
    MyPostsScreen(),
    Container(), // You can replace with an actual screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showCategorySelectionScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CategoryScreen()), // Navigate to the Category Screen
    );
  }

  void _searchFunction() {
    // Implement your search functionality here (e.g., show a search bar)
    print("Search function clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800], // Dark green background for AppBar
        title: Text('Home', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _searchFunction, // Search functionality when clicked
          ),
        ],
        leading: GestureDetector(
          onTap: _showCategorySelectionScreen, // Show category selection screen when tapped
          child: Center(
            child: Text('=', style: TextStyle(fontSize: 28, color: Colors.white)), // Equal sign in the center
          ),
        ),
      ),
      body: Container(
        color: Colors.green[700], // Dark green background for the body
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'My Posts',
          ),
        ],
      ),
    );
  }
}
