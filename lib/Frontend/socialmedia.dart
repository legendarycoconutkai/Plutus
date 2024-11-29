import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';

class Socialmedia extends StatefulWidget {
  const Socialmedia({super.key});

  @override
  State<Socialmedia> createState() => _SocialmediaState();
}

class _SocialmediaState extends State<Socialmedia> {

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
                  height: MediaQuery.of(context).size.height*1.1, // Set height to screen height
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage('assets/socialmedia.png'),
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