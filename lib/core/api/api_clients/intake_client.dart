import 'package:bcc_rscm/core/api/api_clients/api_client.dart';
import 'package:bcc_rscm/core/models/doctor/diagnosis.dart';

final class IntakeClient extends ApiClient {
  new({required super.interceptors, required super.env});

  Future<IntakeDetailResponse?> intakeDetail({required String id}) async {
    const endpoint = 'pierre/intake/detail';

    final response = await post<IntakeDetailResponse>(
      endpoint: endpoint,
      serializer: IntakeDetailResponse.fromJson,
      body: {"id": id},
    );

    return response;
  }
}
