import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';
import 'package:plutus/Frontend/check_profile.dart';

class Apply extends StatefulWidget {
  const Apply({super.key});

  @override
  State<Apply> createState() => _ApplyState();
}

class _ApplyState extends State<Apply> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0,),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
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
                    ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18.0,),
                child: Text('Personal Loan Application', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
              ),
              const Text(
                'Answer following details\nand we’ll bring the best deals to you.', 
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9.0,),
                child: Container(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color:orange,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 2.18),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Loan Amount', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: white),),
                          const SizedBox(
                            width: 100, height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'RM 2000',
                                hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0)
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(color: Colors.black, thickness: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Loan Duration', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: white),),
                          const SizedBox(
                            width: 100, height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '2 years',
                                hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0)
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(color: Colors.black, thickness: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Monthly Income', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: white),),
                          const SizedBox(
                            width: 100, height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'RM 5000',
                                hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0)
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(color: Colors.black, thickness: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Theme(
                            data: Theme.of(context).copyWith(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Checkbox(
                              activeColor: Colors.black,
                              value: _isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              },
                            ),
                          ),
                          const Text(
                            'I agree to the Plutus Terms and Conditions', 
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),                          
                        ],
                      ),
                      const SizedBox(height: 18,),
                      GestureDetector(
                        onTap: () {
                            if (_isChecked) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const CheckProfile()),
                            );
                            } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Please agree to the terms and conditions')),
                            );
                            }
                        },
                        child: Container(
                          width: 120, height: 45,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black, width: 2.18),
                          ),
                          child: const Center(
                            child: Text(
                              'Search Now', 
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), 
                              textAlign: TextAlign.start,),
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]
          )
        )
      )
    );
  }
}