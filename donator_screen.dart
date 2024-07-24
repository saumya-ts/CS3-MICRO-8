import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
import 'package:new_hemobridge/widgets/custom_scaffold.dart'; // Import CustomScaffold

class DonorInterface extends StatefulWidget {
  const DonorInterface({super.key});

  @override
  _DonorInterfaceState createState() => _DonorInterfaceState();
}

class _DonorInterfaceState extends State<DonorInterface> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Scaffold(
        backgroundColor: Colors.transparent, // Make Scaffold background transparent
        appBar: AppBar(
          title: const Text('Donor Interface'),
          backgroundColor: Colors.transparent, // Make AppBar background transparent
          elevation: 0, // Remove AppBar shadow
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Donor Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _bloodGroupController,
                decoration: const InputDecoration(
                  labelText: 'Blood Group',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _contactController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Contact Number',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _submitDonorInfo();
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitDonorInfo() {
    String name = _nameController.text;
    String bloodGroup = _bloodGroupController.text;
    String contactNumber = _contactController.text;

    // Save donor information to Firestore
    FirebaseFirestore.instance.collection('donors').add({
      'name': name,
      'bloodGroup': bloodGroup,
      'contactNumber': contactNumber,
    }).then((value) {
      // If the information is successfully saved
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Donor information submitted successfully!'),
        ),
      );
      // Clear text fields after submission
      _nameController.clear();
      _bloodGroupController.clear();
      _contactController.clear();
    }).catchError((error) {
      // If an error occurs during submission
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error submitting information.'),
        ),
      );
    });
  }
}
