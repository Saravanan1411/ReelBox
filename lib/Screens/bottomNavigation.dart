import 'package:flutter/material.dart';


import '../Data/movieDetails.dart';
import '/Screens/search.dart';
import '/Screens/home.dart';
import '/Screens/profile.dart';
import 'downloads.dart';

class BottomNavigation extends StatefulWidget {
  final int currentIndex;
  const BottomNavigation({super.key,required this.currentIndex});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
 late int _index;

 @override
 void initState(){
   super.initState();
   _index = widget.currentIndex;
 }
  void tap(index) {
    setState(() {
      if (index >= 0 && index < pages.length) {
        _index = index;
      }
    });
  }

  final pages = [
    Home(),
    Search(),
    Downloads(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        // selectedItemColor: Colors.blue, // Color of the selected item
        unselectedItemColor: Colors.grey, // Color of the unselected items
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold), // Style for selected item's text
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        items: [
          BottomNavigationBarItem(
            label: "Home",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search)
          ),
          BottomNavigationBarItem(
              label: "Downloads",
              icon: Icon(Icons.download_for_offline)
          ),
          BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person)
          ),
        ],

        currentIndex: _index,
        onTap: tap,

      ),
    );
  }
}
