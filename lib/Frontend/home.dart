import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';
import 'package:plutus/Frontend/aichat.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool firstContainer = true;
  bool secondContainer = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
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
                          padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 12.0, right: 6.0,),
                          child: Text(
                            'Hey there, here’s the \nsummary of your credit analysis', 
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                            textAlign: TextAlign.end,),
                        )
                      ),
                      const SizedBox(width: 9.0,),
                      Image.asset('assets/robot.png', height: 27, width: 27,),
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
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 6.0, right: 6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/graph2.png', height: 48,),
                            const SizedBox(height: 6.0,),
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
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).width*0.42*0.66, width: MediaQuery.sizeOf(context).width*0.42,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black, width: 2.18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 6.0, left: 6.0, right: 6.0),
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
                    ),
                  ],
                ),
                const SizedBox(height: 15.0,),
                const Text('Loan Repayment Analysis', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 9.0,),
                Container(
                  height: MediaQuery.sizeOf(context).width*0.45, width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 2.18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 6.0, left: 6.0, right: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/graph1.png', width: 192,),
                        const SizedBox(width: 18.0,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('assets/robot.png', height: 27, width: 27,),
                              const SizedBox(height: 4.5,),
                              const Divider(color: Colors.black, thickness: 2, height: 6, indent: 115,),
                              const SizedBox(height: 4.5,),
                              const Flexible(
                                child: Text(
                                'You didn’t pay on time in June. An additional interest of 5% is charged.', 
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  )
                ),
                const SizedBox(height: 9.0,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ChatScreen()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: orange,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2.18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset('assets/bot.png', height: 33, width: 33,),
                        ),
                      ),
                    ),
                    const SizedBox(width: 9.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: paleorange,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black, width: 2.18),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 6.0, right: 12.0,),
                        child: Text(
                          'Click me for assistance\nto improve your credit score', 
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                          textAlign: TextAlign.start,),
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 9.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/chart1.png', width: MediaQuery.sizeOf(context).width*0.4,),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).width*0.42*0.66, width: MediaQuery.sizeOf(context).width*0.46,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black, width: 2.18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0, bottom: 6.0, left: 6.0, right: 6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/contract.png', height: 27, width: 27,),
                                      const SizedBox(width: 9.0,),
                                      const Text(
                                        'COMPLETE YOUR PROFILE', 
                                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                                        textAlign: TextAlign.start,),
                                    ],
                                  ),
                                  const SizedBox(height: 9.0,),
                                  const Text(
                                    'Manually enter your personal detail.', 
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            )
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: paleorange,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black, width: 2.18),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0,),
                            child: Text(
                              'FILL NOW', 
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                              textAlign: TextAlign.start,),
                          )
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 9.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: paleorange,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black, width: 2.18),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0,),
                            child: Text(
                              'Complete your credit profile\nto improve accuracy of credit\nscoring', 
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                              textAlign: TextAlign.start,),
                          )
                        ),
                        const SizedBox(height: 15.0,),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  firstContainer = !firstContainer;
                                });
                              },
                              child: Container(
                                width: 75,
                                decoration: BoxDecoration(
                                  color: firstContainer ? paleyellow : const Color(0xFFB5FFC2),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black, width: 2.18),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                                  child: Text(
                                    firstContainer ? 'E-wallet' : 'Connected',
                                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15.0),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  secondContainer = !secondContainer;
                                });
                              },
                              child: Container(
                                width: 75,
                                decoration: BoxDecoration(
                                  color: secondContainer ? paleyellow : const Color(0xFFB5FFC2),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black, width: 2.18),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                                  child: Text(
                                    secondContainer ? 'Social Media' : 'Connected',
                                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(width: 15.0,),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).width*0.42*0.66, width: MediaQuery.sizeOf(context).width*0.46,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black, width: 2.18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0, bottom: 6.0, left: 6.0, right: 6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/scan.png', height: 27, width: 27,),
                                      const SizedBox(width: 9.0,),
                                      const Text(
                                        'SCAN CREDIT REPORT', 
                                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                                        textAlign: TextAlign.start,),
                                    ],
                                  ),
                                  const SizedBox(height: 9.0,),
                                  const Text(
                                    'Scan your report and our algorithms analyze it automatically for you.', 
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            )
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: paleorange,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black, width: 2.18),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0,),
                            child: Text(
                              'SCAN NOW', 
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), 
                              textAlign: TextAlign.start,),
                          )
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}