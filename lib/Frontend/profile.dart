import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildSectionTitle("Account Info"),
            buildDetailTile("Name", "JESS HO JIA QIAN"),
            buildDetailTile("IC Number", "021111-**-****"),
            buildDetailTile("Mobile No.", "***-****3135"),
            const SizedBox(height: 20),
            buildSectionTitle("Personal Details"),
            buildDetailTile("Marital Status", "Single"),
            buildDetailTile("Address", "Kolej Canselor, Universiti Putra Malaysia"),
            buildDetailTile("Nationality", "Malaysian"),
            const SizedBox(height: 20),
            buildSectionTitle("Employment Details"),
            buildDetailTile("Occupation", "Managers"),
            buildDetailTile("Company Name", "Company XYZ"),
            buildDetailTile("Employment Status", "Permanent"),
            buildDetailTile("Office Address", "Office XYZ Address"),
          ],
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

  Widget buildDetailTile(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Divider(color: Colors.grey.shade300, thickness: 1),
      ],
    );
  }
}
