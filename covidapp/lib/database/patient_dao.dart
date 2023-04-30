import 'package:covidapp/models/patient_model.dart';
import 'package:flutter/widgets.dart';

class PatientDAO {
  static final List<PatientModel> _patients = List();

  static add(PatientModel patientModel) {
    _patients.add(patientModel);
  }

  static PatientModel getPatient(int index) {
    return _patients.elementAt(index);
  }

  static void update(PatientModel patientModel) {
    debugPrint('novo ' + patientModel.toString());
    debugPrint('antes ${_patients}');
    _patients
        .replaceRange(patientModel.id, patientModel.id + 1, [patientModel]);
    debugPrint("depois ${_patients}");
  }

  static get listPatients {
    return _patients;
  }
}
