import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin RolesPageActionMapper on GlobalActionMapper {
  void goToHome() => dispatch(NavigateToAndReplaceAction('/home'));

  void goToDoctorHome() => dispatch(NavigateToRootAction(path: '/doctor-home'));

  void goToSignInPatient() =>
      dispatch(NavigateToRootAction(path: '/auth/sign-in-patient'));
}
