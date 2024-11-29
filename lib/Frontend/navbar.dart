import 'package:flutter/material.dart';
import 'package:plutus/Frontend/apply.dart';
import 'package:plutus/Frontend/dashboard.dart';
import 'package:plutus/Frontend/home.dart';
import 'package:plutus/Frontend/loan.dart';
import 'package:plutus/Frontend/loan_list.dart';
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
    const Dashboard()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the current page
      body: pages[_page],
      // Bottom navigation bar
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          labelTextStyle: WidgetStatePropertyAll(TextStyle(color: Colors.transparent, fontSize: 0)),
          backgroundColor: Colors.black,
          indicatorColor: Colors.grey,
        ),
        child: NavigationBar(
          height: 60,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined, color: Colors.white,), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.money, color: Colors.white,), label: 'Loan'),
            NavigationDestination(icon: Icon(Icons.chat, color: Colors.white,), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.pie_chart_outline, color: Colors.white,), label: 'Dashboard'),
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
    );
  }
}