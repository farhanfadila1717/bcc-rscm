import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin SelfcheckPageActionMapper on GlobalActionMapper {
  void goToDetailSelftcheck(String id) =>
      dispatch(NavigateToNextAction('/selfcheck/detail/$id'));
}
