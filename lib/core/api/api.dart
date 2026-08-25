import 'package:bcc_rscm/core/api/api_clients/appointment_client.dart';
import 'package:bcc_rscm/core/api/api_clients/intake_client.dart';
import 'package:bcc_rscm/core/api/api_clients/patient_client.dart';
import 'package:bcc_rscm/core/api/api_clients/service_client.dart';
import 'package:bcc_rscm/core/models/utils/environment_config.dart';
import 'package:dio/dio.dart';

final class Api {
  final AppointmentClient appointmentClient;
  final IntakeClient intakeClient;
  final PatientClient patientClient;
  final ServiceClient serviceClient;

  const Api({
    required this.appointmentClient,
    required this.intakeClient,
    required this.patientClient,
    required this.serviceClient,
  });

  factory Api.create({
    required EnvironmentConfig env,
    required List<Interceptor> interceptors,
  }) => Api(
    appointmentClient: AppointmentClient(interceptors: interceptors, env: env),
    intakeClient: IntakeClient(interceptors: interceptors, env: env),
    patientClient: PatientClient(interceptors: interceptors, env: env),
    serviceClient: ServiceClient(interceptors: interceptors, env: env),
  );
}
