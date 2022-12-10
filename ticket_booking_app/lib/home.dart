import 'package:flutter/material.dart';
import 'package:ticket_booking_app/homescreen.dart';
import 'package:ticket_booking_app/profile_screen.dart';
import 'package:ticket_booking_app/search_screen.dart';
import 'package:ticket_booking_app/ticket_tabs.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  static final List<Widget> _widgetOptions = <Widget> [
    const HomeScreen(),
    const SearchScreen(),
    const TicketTabs(),
    const ProfileScreen(),
  ];
  void onItemTap(int ind){
    setState(() {
      index=ind;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _widgetOptions[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onItemTap,
          currentIndex: index,
          elevation: 10,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label: "Ticket"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]
      ),
    );
  }
}
