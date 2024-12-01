import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';
import 'package:plutus/Backend/userdata.dart';
import 'package:plutus/Frontend/report.dart';

class BankPov extends StatefulWidget {
  const BankPov({super.key});

  @override
  State<BankPov> createState() => _BankPovState();
}

class _BankPovState extends State<BankPov> {

  late String finalScore;
  late String name;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    finalScore = await UserData.readFinalScore();
    name = await UserData.readName();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36.0, left: 20.0, bottom: 18.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('LOAN APPLICANTS', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                    GestureDetector(
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
                  ],
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height,
                color: orange,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 18),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Report()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 18),
                          padding: const EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 18),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black, width: 2.18),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(finalScore, style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
                                Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}