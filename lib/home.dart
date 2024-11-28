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
      backgroundColor: white,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).width*0.42*0.66, width: MediaQuery.sizeOf(context).width*0.42,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 2.18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0,),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 6.0,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 48.0,),
                            Container(
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: orange, width: 2.18),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 12.0, right: 12.0,),
                                child: Text(
                                  'Credit Gauge\n(From poor to excellent)', 
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                                  textAlign: TextAlign.center,),
                              )
                            ),
                          ],
                        ),
                      )
                    )
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).width*0.42*0.66, width: MediaQuery.sizeOf(context).width*0.42,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 2.18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0,),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 6.0,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Your credit score is 250. Your credit is LOW, which ranges between 230 - 269.', 
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 12.0,),
                            Container(
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: orange, width: 2.18),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 12.0, right: 12.0,),
                                child: Text(
                                  'Credit Summary', 
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                                  textAlign: TextAlign.center,),
                              )
                            ),
                          ],
                        ),
                      )
                    )
                  ),
                ],
              ),
              const SizedBox(height: 30.0,),
              const Text('Loan Repayment Analysis', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              const SizedBox(height: 9.0,),
              Container(
                height: MediaQuery.sizeOf(context).width*0.45, width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2.18),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0,),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 6.0,),
                    child: Row(
                      children: [
                        SizedBox(width: 210.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.bug_report_rounded, size: 30,),
                            SizedBox(height: 4.5,),
                            Divider(color: Colors.black, thickness: 2,),
                            SizedBox(height: 4.5,),
                            Text(
                              'You didn’t pay on time\nin June. An additional\ninterest of 5% is charged.', 
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    )
                  )
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}