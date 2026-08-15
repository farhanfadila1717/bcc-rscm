import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin SignInPatientPageActionMapper on GlobalActionMapper {
  void goToHomePatient() => dispatch(NavigateToRootAction(path: '/home'));
}
