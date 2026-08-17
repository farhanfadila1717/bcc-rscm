import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin CameraGuidePageActionMapper on GlobalActionMapper {
  void goToCamera() => dispatch(NavigateToAndReplaceAction('/camera'));
}
