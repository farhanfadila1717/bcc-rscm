import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin WelcomePageActionMapper on GlobalActionMapper {
  void goToRolePage() => dispatch(NavigateToAndReplaceAction('/roles'));
}
