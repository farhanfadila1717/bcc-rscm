import 'package:bcc_rscm/core/api/api.dart';
import 'package:bcc_rscm/core/api/controllers/patient_controller.dart';
import 'package:bcc_rscm/core/models/utils/environment_config.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void inject(EnvironmentConfig env) {
  final api = Api.create(env: env, interceptors: []);

  getIt.registerSingleton<PatientController>(
    PatientController(patientClient: api.patientClient),
  );
}
