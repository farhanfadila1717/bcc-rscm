import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin RoutineVisitPageActionMapper on GlobalActionMapper {
  void goToDetailVisitRoutine({required String id}) =>
      dispatch(NavigateToNextAction('/report/detail-visit-routine/$id'));
}
