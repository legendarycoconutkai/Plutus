import 'package:flutter/material.dart';
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoanApplicationSubmittedPage()),
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