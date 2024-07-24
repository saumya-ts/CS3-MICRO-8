import 'package:flutter/material.dart';
import 'package:new_hemobridge/widgets/custom_scaffold.dart'; // Import CustomScaffold

class ReceiverInterface extends StatefulWidget {
  const ReceiverInterface({super.key});

  @override
  _ReceiverInterfaceState createState() => _ReceiverInterfaceState();
}

class _ReceiverInterfaceState extends State<ReceiverInterface> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Scaffold(
        backgroundColor: Colors.transparent, // Make Scaffold background transparent
        appBar: AppBar(
          title: const Text('Receiver Interface'),
          backgroundColor: Colors.transparent, // Make AppBar background transparent
          elevation: 0, // Remove AppBar shadow
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Receiver Information',
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
                  _submitReceiverInfo();
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitReceiverInfo() {
    // Here you can add code to submit the receiver information
    String name = _nameController.text;
    String bloodGroup = _bloodGroupController.text;
    String contactNumber = _contactController.text;

    // Example: You can print the entered information
    print('Name: $name');
    print('Blood Group: $bloodGroup');
    print('Contact Number: $contactNumber');

    // You can also add code here to save the information to a database
  }
}
