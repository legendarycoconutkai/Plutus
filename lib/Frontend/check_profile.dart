import 'package:flutter/material.dart';
import 'package:plutus/Backend/gemini.dart';
import 'package:plutus/Backend/userdata.dart';
import 'package:plutus/Frontend/submitted.dart';

class CheckProfile extends StatefulWidget {
  const CheckProfile({super.key});

  @override
  State<CheckProfile> createState() => _CheckProfileState();
}

class _CheckProfileState extends State<CheckProfile> {
  final TextEditingController nameController = TextEditingController(text: 'JESS HO JIA QIAN');
  final TextEditingController icController = TextEditingController(text: '021111-**-****');
  final TextEditingController phoneController = TextEditingController(text: '***-****3135');
  final TextEditingController emailController = TextEditingController(text: 'jess@email.com');

  String? nowValue = 'Single';

  final TextEditingController addressController = TextEditingController(text: 'Kolej Canselor, Universiti Putra Malaysia');
  final TextEditingController nationalityController = TextEditingController(text: 'Malaysian');

  final TextEditingController occupationController = TextEditingController(text: 'Managers');
  final TextEditingController companyNameController = TextEditingController(text: 'Company XYZ');
  final TextEditingController employmentController = TextEditingController(text: 'Permanent');
  final TextEditingController officeAddressController = TextEditingController(text: 'Company XYZ Address');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSectionTitle("Account Info"),
                buildTextField('Name', 'Enter your name', controller: nameController),
                const SizedBox(height: 15.0),
                buildTextField('IC Number', 'Enter your IC number', controller: icController),
                const SizedBox(height: 15.0),
                buildTextField('Phone', 'Enter your phone number', controller: phoneController),
                const SizedBox(height: 15.0),
                buildTextField('Email', 'Enter your email', controller: emailController),
                const SizedBox(height: 24.0),
                buildSectionTitle("Personal Details"),
                buildDropdownField('Marital Status', ['Single', 'Married', 'Divorced', 'Widowed']),
                const SizedBox(height: 15.0),
                buildTextField('Address', 'Enter your address', controller: addressController),
                const SizedBox(height: 15.0),
                buildTextField('Nationality', 'Enter your nationality', controller: nationalityController),
                const SizedBox(height: 24.0),
                buildSectionTitle("Employment Details"),
                buildTextField('Occupation', 'Enter your occupation', controller: occupationController),
                const SizedBox(height: 15.0),
                buildTextField('Company Name', 'Enter your company name', controller: companyNameController),
                const SizedBox(height: 15.0),
                buildTextField('Employment Status', 'Enter your employment status', controller: employmentController),
                const SizedBox(height: 15.0),
                buildTextField('Office Address', 'Enter your office address', controller: officeAddressController),
                const SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () async {
                    final updatedName = nameController.text.isNotEmpty ? nameController.text : 'JESS HO JIA QIAN';
                    final updatedIc = icController.text.isNotEmpty ? icController.text : '021111-**-****';
                    final updatedPhone = phoneController.text.isNotEmpty ? phoneController.text : '***-****3135';
                    final updatedmarital = nowValue;
                    final updatedAddress = addressController.text.isNotEmpty ? addressController.text : 'Kolej Canselor, Universiti Putra Malaysia';
                    final updatedNationality = nationalityController.text.isNotEmpty ? nationalityController.text : 'Malaysian';
                    final updatedOccupation = occupationController.text.isNotEmpty ? occupationController.text : 'Managers';
                    final updatedCompanyName = companyNameController.text.isNotEmpty ? companyNameController.text : 'Company XYZ';
                    final updatedEmployment = employmentController.text.isNotEmpty ? employmentController.text : 'Permanent';
                    final updatedOfficeAddress = officeAddressController.text.isNotEmpty ? officeAddressController.text : 'Company XYZ Address';

                    try {
                      await UserData.saveUserData(
                        name: updatedName,
                        icNumber: updatedIc,
                        phone: updatedPhone,
                        marital: updatedmarital,
                        address: updatedAddress,
                        nationality: updatedNationality,
                        occupation: updatedOccupation,
                        cname: updatedCompanyName,
                        estatus: updatedEmployment,
                        oaddress: updatedOfficeAddress,
                      );
                    } catch (e) {
                      // Handle the error here, e.g., show a snackbar or dialog
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Failed to save user data: $e')),
                      );
                    }

                    generateContent(3, "You are an AI credit analyst. Evaluate credit score of social media posts based on criteria of evidence of stability, behavioral consistency, emotional stability, and social interactions. Just give a confident answer, it is okay to be wrong. I want a short summary of the applicant's sosial life Evaluate the credit score based on the following social media posts: 1. 'I am a very stable person. I have been working at the same company for 5 years and I have never been late on a payment.' 2. 'I am a very stable person. I have been working at the same company for 5 years and I have never been late on a payment.' 3. 'I am a very stable person. I have been working at the same company for 5 years and I have never been late on a payment.' 4. 'I am a very stable person. I have been working at the same company for 5 years and I have never been late on a payment.'");
                    generateContent(2, "Evaluate creditworthiness based on these weighted attributes: Credit-to-Debit Ratio (30%), where a higher ratio reflects better creditworthiness; Credit Loan Recency (20%), where longer recency lowers creditworthiness; Number of Cards (17.5%) and Credit Loan Frequency (17.5%), both inversely proportional to creditworthiness; Debit Card Frequency (10%), positively impacting creditworthiness with higher usage; and Number of Transactions (5%), where increased transactions indicate higher creditworthiness. Provide a score and credit level for each attribute and summarize the overall creditworthiness on a 0–100% scale. Assess the credit risk for the following transaction data:, Credit-to-Debit Ratio: 0.18, Credit Loan Recency: 32 months, Number of Cards: 4, Credit Loan Frequency: 10 times/year, Debit Card Frequency: 16 times/month, Number of Transactions: 67/month. I want it short and precise.");

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoanApplicationSubmittedPage()),
                    );
                  },
                  child: const Text("Submit"),
                ),
                Container(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget buildTextField(String label, String placeholder,
      {bool readOnly = false, TextEditingController? controller}) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: label,
        hintText: placeholder,
        border: const OutlineInputBorder(),
        errorText:
            (controller != null && controller.text.isEmpty) ? "This is a required field." : null,
      ),
      validator: (value) {
        if (!readOnly && (value == null || value.isEmpty)) {
          return "This is a required field.";
        }
        return null;
      },
    );
  }

  Widget buildDropdownField(String label, List<String> items) {
    String? selectedValue = 'Single';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8.0),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          value: selectedValue,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue;
              nowValue = newValue;
            });
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please select an option';
            }
            return null;
          },
        ),
      ],
    );
  }
}