import 'package:bcc_rscm/core/api/api_clients/api_client.dart';
import 'package:bcc_rscm/core/models/patient/patient_summary.dart';

final class PatientClient extends ApiClient {
  PatientClient({required super.interceptors, required super.env});

  Future<PatientSummaryList?> patientList() async {
    const endpoint = 'pierre/client/list';

    final response = await post<PatientSummaryList>(
      endpoint: endpoint,
      serializer: PatientSummaryList.fromJson,
    );

    return response;
  }
}
