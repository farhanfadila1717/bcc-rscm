import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin DoctorHomePageActionMapper on GlobalActionMapper {
  void goToDetailPatient({required String id}) =>
      dispatch(NavigateToNextAction('/doctor/patient/$id'));
}
