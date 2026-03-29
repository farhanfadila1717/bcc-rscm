import 'package:bcc_rscm/ui/pages/auth/sign_in_patient_page/sign_in_patient_page.dart';
import 'package:bcc_rscm/ui/pages/roles_page/roles_page.dart';
import 'package:bcc_rscm/ui/pages/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/auth/sign-in-patient',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const WelcomePage()),
    GoRoute(path: '/roles', builder: (context, state) => const RolesPage()),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const SizedBox(),
      routes: [
        GoRoute(
          path: 'sign-in-patient',
          builder: (context, state) => const SignInPatientPage(),
        ),
      ],
    ),
  ],
);
