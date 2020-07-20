import 'package:flutter/material.dart';
import 'package:migraine_data/daily_quiz.dart';
import 'package:migraine_data/your_data.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/yourdata' : (context) => YourDataScreen(),
    },
  ));
}

class HomeScreen extends StatefulWidget {
  @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {
  int _currentIndex = 0; // Index of nav dest. selected.
  final List<Widget> _children = [
    RadioButtonQuestion(),
    YourDataScreen(),
  ]; // List of widgets to render based on selected nav dest.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.amber,
        type: BottomNavigationBarType.fixed, // Fix bg color issue.
        onTap: onDestTapped,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: Text('Your Data'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headset),
            title: Text('Community Data'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Manage'),
          ),
        ],
      ),
    );
  }

  void onDestTapped(int index){
    setState(() {
      _currentIndex = index; 
    });
  }
}

