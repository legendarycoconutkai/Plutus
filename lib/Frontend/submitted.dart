import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';
import 'package:plutus/Backend/gemini.dart';
import 'package:plutus/Backend/userdata.dart';

class LoanApplicationSubmittedPage extends StatefulWidget {
  const LoanApplicationSubmittedPage({super.key});

  @override
  State<LoanApplicationSubmittedPage> createState() => _LoanApplicationSubmittedPageState();
}

class _LoanApplicationSubmittedPageState extends State<LoanApplicationSubmittedPage> {

  late String llmOutput;
  late String smOutput;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    llmOutput = await UserData.readLlmOutput();
    smOutput = await UserData.readSmOutput();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_outline,
                color: paleorange,
                size: 100.0,
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Your loan application has been submitted successfully!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              const Text(
                'We will review your application and get back to you shortly.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  generateContent(4, "Evaluate creditworthiness based on these weighted attributes: Credit-to-Debit Ratio (30%), where a higher ratio reflects better creditworthiness; Credit Loan Recency (20%), where longer recency lowers creditworthiness; Number of Cards (17.5%) and Credit Loan Frequency (17.5%), both inversely proportional to creditworthiness; Debit Card Frequency (10%), positively impacting creditworthiness with higher usage; and Number of Transactions (5%), where increased transactions indicate higher creditworthiness. Provide a score and credit level for each attribute and summarize the overall creditworthiness on a 0–100% scale. Assess the credit risk for the following transaction data:, Credit-to-Debit Ratio: 0.18, Credit Loan Recency: 32 months, Number of Cards: 4, Credit Loan Frequency: 10 times/year, Debit Card Frequency: 16 times/month, Number of Transactions: 67/month. I want the score only, 2 digits with 2 decimal places. Strictly no explaination whatsoever. I only want the numerical value.");
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: const Text('Back to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}