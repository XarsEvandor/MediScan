import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String? id;
  String? firstName;
  String? lastName;
  String? age;
  String? bloodType;
  String? mobileNumber;
  List<String>? allergies;
  List<String>? medications;
  List<String>? conditions;
  List<String>? surgeries;
  List<String>? immunizations;
  List<String>? familyHistory;
  List<String>? notes;
  List<User>? relatives;

  static User? fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    if (data == null) {
      return null;
    }
    final relatives = List<String>.from(data['relatives'] ?? []);
    final userRelatives = <User>[];
    for (final relative in relatives) {
      final relativeUser = User();
      relativeUser.id = relative;
    }

    final retUser = User();

    retUser.id = doc.id;
    retUser.firstName = data['firstName'];
    retUser.lastName = data['lastName'];
    retUser.age = data['age'];
    retUser.bloodType = data['bloodType'];
    retUser.mobileNumber = data['mobileNumber'];
    retUser.allergies = List<String>.from(data['allergies'] ?? []);
    retUser.medications = List<String>.from(data['medications'] ?? []);
    retUser.conditions = List<String>.from(data['conditions'] ?? []);
    retUser.surgeries = List<String>.from(data['surgeries'] ?? []);
    retUser.immunizations = List<String>.from(data['immunizations'] ?? []);
    retUser.familyHistory = List<String>.from(data['familyHistory'] ?? []);
    retUser.notes = List<String>.from(data['notes'] ?? []);
    retUser.relatives = userRelatives;

    return retUser;
  }

  Map<String, dynamic> toMap() {
    final relatives = <String>[];
    if (this.relatives != null) {
      for (final relative in this.relatives!) {
        relatives.add(relative.id!);
      }
    }
    return {
      'firstName': firstName,
      'lastName': lastName,
      'age': age,
      'bloodType': bloodType,
      'mobileNumber': mobileNumber,
      'allergies': allergies,
      'medications': medications,
      'conditions': conditions,
      'surgeries': surgeries,
      'immunizations': immunizations,
      'familyHistory': familyHistory,
      'notes': notes,
      'relatives': relatives,
    };
  }
}
