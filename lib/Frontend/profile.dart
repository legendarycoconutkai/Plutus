import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  String? maritalStatus;
  TextEditingController addressController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController officeAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check your details"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                "Please ensure your details are correct before submitting your loan application.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              buildTextField("Name", "JESS HO JIA QIAN", readOnly: true),
              buildTextField("IC number", "021111-**-****", readOnly: true),
              buildTextField("Mobile no.", "***-****3135", readOnly: true),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: "Marital status"),
                value: maritalStatus,
                items: [
                  DropdownMenuItem(value: "Single", child: Text("Single")),
                  DropdownMenuItem(value: "Married", child: Text("Married")),
                  DropdownMenuItem(value: "Divorced", child: Text("Divorced")),
                ],
                onChanged: (value) => setState(() {
                  maritalStatus = value;
                }),
                validator: (value) =>
                    value == null ? "This is a required field." : null,
              ),
              buildTextField("Address", "Typing...", controller: addressController),
              buildTextField("Nationality", "Malaysian", readOnly: true),
              buildTextField("Occupation", "Managers", readOnly: true),
              buildTextField(
                  "Company name", "", controller: companyNameController),
              buildTextField(
                "Employment status",
                "Permanent",
                readOnly: true,
              ),
              buildTextField(
                  "Office address", "", controller: officeAddressController),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        // Go back action
                      },
                      child: Text("Back"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                          // Submit action
                        }
                      },
                      child: Text("Submit"),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
        border: OutlineInputBorder(),
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
}
