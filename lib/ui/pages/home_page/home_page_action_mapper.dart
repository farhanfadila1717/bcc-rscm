import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';

mixin HomePageActionMapper on GlobalActionMapper {
  void goToCleftConnect() => dispatch(NavigateToNextAction('/cleft-connect'));

  void goToCleftTracker() => dispatch(NavigateToNextAction('/cleft-tracker'));
}
