import 'package:bcc_rscm/core/api/api.dart';
import 'package:bcc_rscm/core/api/controllers/patient_controller.dart';
import 'package:bcc_rscm/core/models/utils/environment_config.dart';
import 'package:bcc_rscm/core/redux/states/global_state.dart';
import 'package:bcc_rscm/core/redux/store.dart';
import 'package:bcc_rscm/core/router/router.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

final getIt = GetIt.instance;

void inject(EnvironmentConfig env) {
  final api = Api.create(env: env, interceptors: []);

  getIt.registerSingleton<GlobalKey<NavigatorState>>(
    GlobalKey<NavigatorState>(),
  );

  getIt.registerSingleton<GoRouter>(appRouter);

  getIt.registerSingleton<PatientController>(
    PatientController(patientClient: api.patientClient),
  );

  getIt.registerSingleton<Store<GlobalState>>(createStore());
}
