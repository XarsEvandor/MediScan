import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // TODO: Implement edit functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name: ${user.firstName ?? ''} ${user.lastName ?? ''}',
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Age: ${user.age ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Blood Type: ${user.bloodType ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Mobile Number: ${user.mobileNumber ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Allergies: ${user.allergies?.join(', ') ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Medications: ${user.medications?.join(', ') ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Conditions: ${user.conditions?.join(', ') ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Surgeries: ${user.surgeries?.join(', ') ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Immunizations: ${user.immunizations?.join(', ') ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Family History: ${user.familyHistory?.join(', ') ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Notes: ${user.notes?.join(', ') ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Relatives: ${user.relatives?.map((relative) => '${relative.firstName ?? ''} ${relative.lastName ?? ''}').join(', ') ?? ''}',
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
