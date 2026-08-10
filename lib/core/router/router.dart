import 'package:bcc_rscm/core/injector/injector.dart';
import 'package:bcc_rscm/core/navigation/navigation_observer.dart';
import 'package:bcc_rscm/ui/pages/auth/register_patient_page/register_patient_page.dart';
import 'package:bcc_rscm/ui/pages/auth/sign_in_patient_page/sign_in_patient_page.dart';
import 'package:bcc_rscm/ui/pages/cleft_connect_page/cleft_connect_page.dart';
import 'package:bcc_rscm/ui/pages/roles_page/roles_page.dart';
import 'package:bcc_rscm/ui/pages/home_page/home_page.dart';
import 'package:bcc_rscm/ui/pages/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: getIt.get<GlobalKey<NavigatorState>>(),
  observers: [LoggerNavigatorObserver()],
  routes: [
    GoRoute(
      name: 'Welcome',
      path: '/',
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      name: 'Home',
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: 'Roles',
      path: '/roles',
      builder: (context, state) => const RolesPage(),
    ),
    GoRoute(
      name: 'Auth',
      path: '/auth',
      builder: (context, state) => const SizedBox(),
      routes: [
        GoRoute(
          name: 'SignInPatient',
          path: 'sign-in-patient',
          builder: (context, state) => const SignInPatientPage(),
        ),
        GoRoute(
          name: 'RegisterPatient',
          path: 'register-patient',
          builder: (context, state) => const RegisterPatientPage(),
        ),
      ],
    ),
    GoRoute(
      name: 'CleftConnect',
      path: '/cleft-connect',
      builder: (context, state) => const CleftConnectPage(),
    ),
  ],
);
