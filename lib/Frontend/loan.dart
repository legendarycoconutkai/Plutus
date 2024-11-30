import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plutus/Backend/colour.dart';

class Loan extends StatefulWidget {
  const Loan({super.key});

  @override
  State<Loan> createState() => _LoanState();
}

class _LoanState extends State<Loan> {

  @override
  Widget build(BuildContext context) {

    final OverlayPortalController confirmController = OverlayPortalController();

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
                child: Text('LOAN', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60.0),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 600, width: MediaQuery.sizeOf(context).width-40,
                            decoration: BoxDecoration(
                              color: cyan,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black, width: 2.18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/bank.png', height: 33, width: 33),
                                      const Text('LIST OF LOANS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                      const SizedBox(width: 12,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: white,
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color: Colors.black, width: 2.18),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0,),
                                          child: Text(
                                            'CHECK NOW', 
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold), 
                                            textAlign: TextAlign.start,),
                                        )
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 18.0,),
                                  const Text(
                                    'Compare loans offered by different banks\nand select the best deal with us.', 
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 18.0,),
                                  Container(
                                    
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.black, width: 2.18),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 1.5, bottom: 1.5, left: 12.0, right: 12.0,),
                                      child: Text(
                                        'Lowest interest rate:\n15% per year', 
                                        style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold), 
                                        textAlign: TextAlign.center,),
                                    )
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 600-200, width: MediaQuery.sizeOf(context).width-40,
                            decoration: BoxDecoration(
                              color: orange,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black, width: 2.18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/signing.png', height: 33, width: 33),
                                      const Text('APPLY FOR LOANS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                      const SizedBox(width: 12,),
                                      GestureDetector(
                                        onTap: confirmController.toggle,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: white,
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: Colors.black, width: 2.18),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0,),
                                            child: Text(
                                              'APPLY NOW', 
                                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold), 
                                              textAlign: TextAlign.start,),
                                          )
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 18.0,),
                                  const Text(
                                    'Select the loan type and fill in the form.\nWe offer loans for:', 
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 18.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: white,
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.black, width: 2.18),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.only(top: 4.5, bottom: 4.5, left: 12.0, right: 12.0,),
                                          child: Text(
                                            'Personal', 
                                            style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold), 
                                            textAlign: TextAlign.center,),
                                        )
                                      ),
                                      const SizedBox(width: 12,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: white,
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.black, width: 2.18),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.only(top: 4.5, bottom: 4.5, left: 12.0, right: 12.0,),
                                          child: Text(
                                            'Student', 
                                            style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold), 
                                            textAlign: TextAlign.center,),
                                        )
                                      ),
                                      const SizedBox(width: 12,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: white,
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.black, width: 2.18),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.only(top: 4.5, bottom: 4.5, left: 12.0, right: 12.0,),
                                          child: Text(
                                            'and more...', 
                                            style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold), 
                                            textAlign: TextAlign.center,),
                                        )
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 200, width: MediaQuery.sizeOf(context).width-40,
                            decoration: BoxDecoration(
                              color: darkblue,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black, width: 2.18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/withdraw.png', height: 33, width: 33),
                                      const Text('REPAY YOUR DEBTS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                      const SizedBox(width: 12,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: white,
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color: Colors.black, width: 2.18),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0,),
                                          child: Text(
                                            'REPAY NOW', 
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold), 
                                            textAlign: TextAlign.start,),
                                        )
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 18.0,),
                                  const Text(
                                    'Check your remaining balance and\nrepay your debt before due.', 
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              OverlayPortal(
                controller: confirmController, 
                overlayChildBuilder: (BuildContext context) {
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      GestureDetector(
                        onTap: confirmController.toggle,
                        child: Container(
                          height: MediaQuery.sizeOf(context).height, width: MediaQuery.sizeOf(context).width,
                          color: Colors.black.withOpacity(0.25),
                        ),
                      ),
                      Container(
                        height: 270, width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(32.75),
                            topRight: Radius.circular(32.75),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  width: 40, height: 3,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 9.0,),
                              child: Text("Loan type", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                            ),
                            const SizedBox(height: 12.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(7.22),
                                    border: Border.all(color: Colors.black, width: 3.15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right : 12.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/user.png', height: 24, width: 24),
                                        const SizedBox(width: 6,),
                                        const Text('Personal', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(7.22),
                                    border: Border.all(color: Colors.black, width: 3.15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right : 12.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/student.png', height: 24, width: 24),
                                        const SizedBox(width: 6,),
                                        const Text('Student', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(7.22),
                                    border: Border.all(color: Colors.black, width: 3.15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right : 12.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/loan.png', height: 24, width: 24),
                                        const SizedBox(width: 6,),
                                        const Text('Mortgage', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 12.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: 10.0,),
                                Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(7.22),
                                    border: Border.all(color: Colors.black, width: 3.15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right : 12.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/car.png', height: 24, width: 24),
                                        const SizedBox(width: 6,),
                                        const Text('Car', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: confirmController.toggle,
                        child: Container(
                          height: 90, width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: orange,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(32.75),
                              topRight: Radius.circular(32.75),
                            ),
                          ),
                          child: const Center(
                            child: Text('Cancel', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          )
        )
      )
    );
  }
}