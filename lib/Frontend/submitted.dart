import 'package:flutter/material.dart';
import 'package:plutus/Backend/colour.dart';

class LoanApplicationSubmittedPage extends StatelessWidget {
  const LoanApplicationSubmittedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loan Application Submitted'),
        backgroundColor: orange,
      ),
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