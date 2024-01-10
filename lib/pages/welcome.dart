import 'package:flutter/material.dart';
import 'package:radhika_details/pages/account.dart';
import 'package:radhika_details/pages/booking.dart';
import 'package:radhika_details/pages/help.dart';
import 'package:radhika_details/pages/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List children = [HomePage(), BookingPage(), HelpPage(), MyAccount()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: children[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink.shade300,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books_outlined,
              ),
              label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.live_help_rounded,
              ),
              label: 'Help'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: 'My Account'),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
