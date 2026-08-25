import 'package:bcc_rscm/core/injector/injector.dart';
import 'package:bcc_rscm/core/navigation/navigation_observer.dart';
import 'package:bcc_rscm/ui/components/doctor_shell.dart';
import 'package:bcc_rscm/ui/pages/auth/profile_page/profile_page.dart';
import 'package:bcc_rscm/ui/pages/auth/register_patient_page/register_patient_page.dart';
import 'package:bcc_rscm/ui/pages/auth/sign_in_patient_page/sign_in_patient_page.dart';
import 'package:bcc_rscm/ui/pages/camera/camera_guide_page/camera_guide_page.dart';
import 'package:bcc_rscm/ui/pages/camera/camera_page/camera_page.dart';
import 'package:bcc_rscm/ui/pages/cleft_connect_page/cleft_connect_page.dart';
import 'package:bcc_rscm/ui/pages/cleft_tracker_page/cleft_tracker_page.dart';
import 'package:bcc_rscm/ui/pages/doctor/client_page/client_page.dart';
import 'package:bcc_rscm/ui/pages/doctor/detail_surgery_page/detail_surgery_page.dart';
import 'package:bcc_rscm/ui/pages/doctor/patient_surgery_page/patient_surgery_page.dart';
import 'package:bcc_rscm/ui/pages/doctor/doctor_home_page/doctor_home_page.dart';
import 'package:bcc_rscm/ui/pages/doctor/doctor_profile_page/doctor_profile_page.dart';
import 'package:bcc_rscm/ui/pages/profile_patient_page/profile_patient_page.dart';
import 'package:bcc_rscm/ui/pages/report/first_visit_page/first_visit_page.dart';
import 'package:bcc_rscm/ui/pages/report/routine_visit_page/routine_visit_page.dart';
import 'package:bcc_rscm/ui/pages/roles_page/roles_page.dart';
import 'package:bcc_rscm/ui/pages/home_page/home_page.dart';
import 'package:bcc_rscm/ui/pages/selfcheck/detail_selfcheck_page/detail_selftcheck_page.dart';
import 'package:bcc_rscm/ui/pages/selfcheck/selfcheck_page/selfcheck_page.dart';
import 'package:bcc_rscm/ui/pages/visit_routine_detail_page/visit_routine_detail_page.dart';
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
    ShellRoute(
      pageBuilder: (context, state, child) =>
          NoTransitionPage(child: DoctorShell(child: child)),
      routes: [
        GoRoute(
          path: '/doctor-home',
          pageBuilder: (_, _) => NoTransitionPage(child: DoctorHomePage()),
        ),
        GoRoute(
          path: '/doctor-profile',
          pageBuilder: (_, _) => NoTransitionPage(child: DoctorProfilePage()),
        ),
      ],
    ),
    GoRoute(
      path: '/doctor',
      builder: (_, _) => SizedBox.shrink(),
      routes: [
        GoRoute(
          path: 'patient/:id',
          builder: (context, state) =>
              ClientPage(clientId: state.pathParameters['id']!),
        ),
        GoRoute(
          path: 'profile/:id',
          builder: (context, state) =>
              ProfilePatientPage(id: state.pathParameters['id']!),
        ),
      ],
    ),
    GoRoute(
      path: '/report',
      builder: (_, _) => SizedBox.shrink(),
      routes: [
        GoRoute(
          path: 'first-visit/:id',
          builder: (context, state) =>
              FirstVisitPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          path: 'detail-visit-routine/:id',
          builder: (context, state) =>
              VisitRoutineDetailPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          path: 'routine-visit/:id',
          builder: (context, state) =>
              RoutineVisitPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          path: 'surgery/:id',
          builder: (context, state) =>
              PatientSurgeryPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          path: 'detail-surgery/:id',
          builder: (context, state) =>
              DetailSurgeryPage(id: state.pathParameters['id']!),
        ),
      ],
    ),
    GoRoute(
      name: 'Roles',
      path: '/roles',
      builder: (context, state) => const RolesPage(),
    ),
    GoRoute(
      name: 'SelftCheck',
      path: '/selfcheck',
      builder: (context, state) => SizedBox.shrink(),
      routes: [
        GoRoute(
          path: 'patient/:id',
          builder: (context, state) =>
              SelfcheckPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          path: 'detail/:id',
          builder: (context, state) =>
              DetailSelftcheckPage(id: state.pathParameters['id']!),
        ),
      ],
    ),
    GoRoute(
      name: 'SignInPatient',
      path: '/auth/sign-in-patient',
      builder: (context, state) => const SignInPatientPage(),
    ),

    GoRoute(
      name: 'RegisterPatient',
      path: '/auth/register-patient',
      builder: (context, state) => const RegisterPatientPage(),
    ),

    GoRoute(
      name: 'Profile',
      path: '/auth/profile',
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      name: 'CleftConnect',
      path: '/cleft-connect',
      builder: (context, state) => const CleftConnectPage(),
    ),
    GoRoute(
      name: 'CleftTracker',
      path: '/cleft-tracker',
      builder: (context, state) => const CleftTrackerPage(),
    ),
    GoRoute(
      name: 'Camera',
      path: '/camera',
      builder: (context, state) => const CameraPage(),
      routes: [
        GoRoute(
          name: 'CameraGuide',
          path: 'guide',
          builder: (context, state) => const CameraGuidePage(),
        ),
      ],
    ),
  ],
);
