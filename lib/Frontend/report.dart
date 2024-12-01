import 'package:flutter/material.dart';
import 'package:plutus/Backend/userdata.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {

  late String name;
  late String icNumber;
  late String phone;
  late String marital;
  late String address;
  late String nationality;
  late String occupation;
  late String cname;
  late String estatus;
  late String oaddress;
  late String amount;
  late String duration;
  late String income;
  late String cnnOutput;
  late String llmOutput;
  late String smOutput;
  late String finalScore;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    name = await UserData.readName();
    icNumber = await UserData.readIcNumber();
    phone = await UserData.readPhone();
    marital = await UserData.readMarital();
    address = await UserData.readAddress();
    nationality = await UserData.readNationality();
    occupation = await UserData.readOccupation();
    cname = await UserData.readCname();
    estatus = await UserData.readEstatus();
    oaddress = await UserData.readOaddress();
    amount = await UserData.readAmount();
    duration = await UserData.readDuration();
    income = await UserData.readIncome();
    cnnOutput = await UserData.readCnnOutput();
    llmOutput = await UserData.readLlmOutput();
    smOutput = await UserData.readSmOutput();
    finalScore = await UserData.readFinalScore();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Report'),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'User Report',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              UserInfoCard(
                title: 'Name',
                value: name,
              ),
              UserInfoCard(
                title: 'IC Number',
                value: icNumber,
              ),
              UserInfoCard(
                title: 'Phone Number',
                value: phone,
              ),
              UserInfoCard(
                title: 'Marital Status',
                value: marital,
              ),
              UserInfoCard(
                title: 'Address',
                value: address,
              ),
              UserInfoCard(
                title: 'Nationality',
                value: nationality,
              ),
              UserInfoCard(
                title: 'Occupation',
                value: occupation,
              ),
              UserInfoCard(
                title: 'Company Name',
                value: cname,
              ),
              UserInfoCard(
                title: 'Employment Status',
                value: estatus,
              ),
              UserInfoCard(
                title: 'Office Address',
                value: oaddress,
              ),
              UserInfoCard(
                title: 'Loan Amount',
                value: amount,
              ),
              UserInfoCard(
                title: 'Loan Duration',
                value: duration,
              ),
              UserInfoCard(
                title: 'Income',
                value: income,
              ),
              UserInfoCard(
                title: 'CNN Output',
                value: cnnOutput,
              ),
              UserInfoCard(
                title: 'LLM Credit Scoring Output',
                value: llmOutput,
              ),
              UserInfoCard(
                title: 'Social Media Output',
                value: smOutput,
              ),
              UserInfoCard(
                title: 'Final Credit Score',
                value: finalScore,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserInfoCard extends StatelessWidget {
  final String title;
  final String value;

  const UserInfoCard({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(value),
      ),
    );
  }
}