import 'package:bcc_rscm/core/api/api_clients/intake_client.dart';
import 'package:bcc_rscm/core/models/doctor/diagnosis.dart';

final class IntakeController {
  const new({required this.intakeClient});

  final IntakeClient intakeClient;

  Future<IntakeDetailResponse?> intakeDetail({required String id}) =>
      intakeClient.intakeDetail(id: id);
}
