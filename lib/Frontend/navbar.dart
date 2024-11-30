import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';
import 'package:plutus/Frontend/aichat.dart';
import 'package:plutus/Frontend/home.dart';
import 'package:plutus/Frontend/loan.dart';
import 'package:plutus/Frontend/profile.dart';
import 'package:plutus/Frontend/socialmedia.dart';

// Frame widget which is a StatefulWidget
class Frame extends StatefulWidget {
  const Frame({super.key});

  @override
  State<Frame> createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  // Initial page index
  int _page = 0;

  // List of pages to navigate to
  final pages = [
    const Home(),
    const Loan(),
    const Socialmedia(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the current page
      body: pages[_page],
      floatingActionButton: _page != 0 ? Container(
        decoration: BoxDecoration(
          color: orange,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 2.18),
        ),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: orange,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatScreen()),
            );
          },
          child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Image.asset('assets/bot.png', height: 33, width: 33,),
          ),
        ),
      ) : null,
      // Bottom navigation bar
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          labelTextStyle: WidgetStatePropertyAll(TextStyle(color: Colors.transparent, fontSize: 0)),
          backgroundColor: Colors.black,
          indicatorColor: Colors.grey,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30.0)),
          child: NavigationBar(
            height: 60,
            backgroundColor: orange,
            indicatorColor: paleorange,
            destinations: [
              const NavigationDestination(icon: Icon(Icons.home_outlined, color: Colors.black,), label: 'Home'),
              NavigationDestination(icon: Image.asset('assets/dollar.png', width: 24, height: 24,), label: 'Loan'),
              NavigationDestination(icon: Image.asset('assets/hashtag.png', width: 24, height: 24,), label: 'Social Media'),
              const NavigationDestination(icon: Icon(Icons.person_outline_rounded, color: Colors.black,), label: 'Profile'),
            ],
            // Current selected index
            selectedIndex: _page,
            // Handle destination selection
            onDestinationSelected: (int index) {
              setState(() {
          // Update the current page index
          _page = index;
              });
            }
          ),
        ),
      ),
    );
  }
}