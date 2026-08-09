import 'package:bcc_rscm/core/api/api_clients/patient_client.dart';
import 'package:bcc_rscm/core/models/utils/environment_config.dart';
import 'package:dio/dio.dart';

final class Api {
  final PatientClient patientClient;

  const Api({required this.patientClient});

  factory Api.create({
    required EnvironmentConfig env,
    required Iterable<Interceptor> interceptors,
  }) => Api(
    patientClient: PatientClient(interceptors: interceptors, env: env),
  );
}
