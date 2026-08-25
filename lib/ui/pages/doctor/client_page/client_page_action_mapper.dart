import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin ClientPageActionMapper on GlobalActionMapper {
  void goToReportFirstVisit({required String id}) =>
      dispatch(NavigateToNextAction('/report/first-visit/$id'));

  void goToReportRoutineVisit({required String id}) =>
      dispatch(NavigateToNextAction('/report/routine-visit/$id'));

  void goToProfilePatient({required String id}) =>
      dispatch(NavigateToNextAction('/doctor/profile/$id'));

  void goToSurgery({required String id}) =>
      dispatch(NavigateToNextAction('/report/surgery/$id'));

  void goToSelfcheckPatient({required String id}) =>
      dispatch(NavigateToNextAction('/selfcheck/patient/$id'));
}
