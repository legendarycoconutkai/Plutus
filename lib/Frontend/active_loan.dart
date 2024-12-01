import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';
import 'package:plutus/Frontend/dashboard.dart';

class ActiveLoan extends StatefulWidget {
  const ActiveLoan({super.key});

  @override
  State<ActiveLoan> createState() => _ActiveLoanState();
}

class _ActiveLoanState extends State<ActiveLoan> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('ACTIVE LOAN', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                  GestureDetector(
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
                ],
              ),
              const SizedBox(height: 18),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 18),
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 18),
                  decoration: BoxDecoration(
                    color: paleyellow,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 2.18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset('assets/maybank.png', width: 165),
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
                                Text('RM 58.33', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                Text('Due soon', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                              ],
                            ),
                            SizedBox(width: 18),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('RM 95.83', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                Text('Monthly repayment', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                              ],
                            ),
                            SizedBox(width: 18),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('RM 921.67', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                Text('Balance remaining', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 18),
                padding: const EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 18),
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
                              Text('RM 0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              Text('Due soon', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                            ],
                          ),
                          SizedBox(width: 18),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('RM 106.21', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              Text('Monthly repayment', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                            ],
                          ),
                          SizedBox(width: 18),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('RM 153.90', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              Text('Balance remaining', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 18),
                padding: const EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 18),
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
                              Text('RM 0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              Text('Due soon', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                            ],
                          ),
                          SizedBox(width: 18),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('RM 20.21', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              Text('Monthly repayment', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                            ],
                          ),
                          SizedBox(width: 18),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('RM 20.21', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              Text('Balance remaining', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}