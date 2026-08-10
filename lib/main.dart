import 'package:bcc_rscm/app/app.dart';
import 'package:bcc_rscm/core/injector/injector.dart';
import 'package:bcc_rscm/core/models/utils/environment_config.dart';
import 'package:flutter/material.dart';

const kEnv = EnvironmentConfig(
  appName: '',
  apiUrl: 'https://www.nexus.mindlabs.id',
  apiKey: '',
  appVersionName: '',
  appVersionCode: '',
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  inject(kEnv);
  runApp(const App());
}
