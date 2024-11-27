import 'package:flutter/material.dart';
import 'package:plutus/colour.dart';

// Frame widget which is a StatefulWidget
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30.0,),
                child: Text('CREDIT SCORE ASSESSMENT', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: paleorange,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black, width: 2.18),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 12.0, right: 3.0,),
                        child: Text(
                          'Hey there, here’s the \nsummary of your credit analysis', 
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                          textAlign: TextAlign.end,),
                      )
                    ),
                    const SizedBox(width: 9.0,),
                    const Icon(Icons.bug_report_rounded, size: 30,),
                  ],
                ),                
              ),
              const SizedBox(height: 9.0,),
            ],
          ),
        ),
      ),
    );
  }
}