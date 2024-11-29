import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  Container(
                  height: MediaQuery.of(context).size.height*1.4, // Set height to screen height
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage('assets/dashboard.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    ),
                  ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}