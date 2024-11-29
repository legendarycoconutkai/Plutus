import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';

class LoanList extends StatefulWidget {
  const LoanList({super.key});

  @override
  State<LoanList> createState() => _LoanListState();
}

class _LoanListState extends State<LoanList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 15.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('LOAN OFFERS LIST', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                  Container(
                    width: 49.41, height: 46.98,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2.18),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Icon(Icons.close_rounded, size: 39, color: Colors.black,),
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 18),
                width: MediaQuery.sizeOf(context).width,
                color: darkblue,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 18, left: 20, right: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black, width: 2.18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 81, height: 21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFB5FFC2),
                                ),
                                child: const Center(
                                  child: Text('RECOMMENDED', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset('assets/maybank.png', width: 165),
                                  const Text('RM 2,000.00', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('2 years', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Loan duration', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('RM 100.00', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Monthly repayment', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('10%*', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Annual interest rate', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 81, height: 21,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0x2DF2828D),
                                  ),
                                  child: const Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.info, size: 9, color: Colors.black,),
                                        SizedBox(width: 3),
                                        Text('More info', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 18, left: 20, right: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black, width: 2.18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 81, height: 21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFB5FFC2),
                                ),
                                child: const Center(
                                  child: Text('RECOMMENDED', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset('assets/cimb.png', width: 165, height: 45, fit: BoxFit.cover),
                                  const Text('RM 1,000.00', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('2 years', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Loan duration', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('RM 50.00', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Monthly repayment', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('10%*', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Annual interest rate', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 81, height: 21,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0x2DF2828D),
                                  ),
                                  child: const Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.info, size: 9, color: Colors.black,),
                                        SizedBox(width: 3),
                                        Text('More info', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 18, left: 20, right: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black, width: 2.18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 81, height: 21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFB5FFC2),
                                ),
                                child: const Center(
                                  child: Text('RECOMMENDED', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset('assets/rhb.png', width: 165, height: 45, fit: BoxFit.cover),
                                  const Text('RM 1,000.00', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('1 year', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Loan duration', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('RM 92.33', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Monthly repayment', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('10.8%*', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Annual interest rate', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 81, height: 21,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0x2DF2828D),
                                  ),
                                  child: const Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.info, size: 9, color: Colors.black,),
                                        SizedBox(width: 3),
                                        Text('More info', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 18, left: 20, right: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black, width: 2.18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 81, height: 21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFB5FFC2),
                                ),
                                child: const Center(
                                  child: Text('RECOMMENDED', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset('assets/tambadana .png', width: 165, height: 45, fit: BoxFit.cover),
                                  const Text('RM 1,000.00', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('2 years', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Loan duration', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('RM 50.33', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Monthly repayment', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('11%*', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Annual interest rate', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 81, height: 21,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0x2DF2828D),
                                  ),
                                  child: const Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.info, size: 9, color: Colors.black,),
                                        SizedBox(width: 3),
                                        Text('More info', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 18, left: 20, right: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black, width: 2.18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 81, height: 21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFB5FFC2),
                                ),
                                child: const Center(
                                  child: Text('RECOMMENDED', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset('assets/maybank.png', width: 165,),
                                  const Text('RM 2,000.00', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('1 year', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Loan duration', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('RM 183.33', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Monthly repayment', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('10%*', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Text('Annual interest rate', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 81, height: 21,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0x2DF2828D),
                                  ),
                                  child: const Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.info, size: 9, color: Colors.black,),
                                        SizedBox(width: 3),
                                        Text('More info', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}