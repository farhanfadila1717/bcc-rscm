import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin DoctorProfilePageActionMapper on GlobalActionMapper {
  void logout() => dispatch(NavigateToRootAction(path: '/'));
}
