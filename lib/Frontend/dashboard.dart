import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  const SizedBox(height: 18),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 49.41, height: 46.98,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2.18),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Icon(Icons.close_rounded, size: 39, color: Colors.black,),
                        )
                      ),
                    ),
                  ),
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