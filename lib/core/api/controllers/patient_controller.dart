import 'package:bcc_rscm/core/api/api_clients/patient_client.dart';
import 'package:bcc_rscm/core/models/patient/patient_summary.dart';

final class PatientController {
  final PatientClient patientClient;

  const PatientController({required this.patientClient});

  Future<PatientSummaryList?> patientList() => patientClient.patientList();
}
