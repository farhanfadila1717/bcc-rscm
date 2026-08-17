import 'package:bcc_rscm/core/redux/actions/app_actions.dart';
import 'package:bcc_rscm/core/redux/states/global_state.dart';
import 'package:logging/logging.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:redux/redux.dart';

final class AppMiddleware extends MiddlewareClass<GlobalState> {
  @override
  void call(Store<GlobalState> store, action, NextDispatcher next) {
    if (action is! AppActions) {
      next(action);
      return;
    }

    if (action is CheckPermissionCameraAction) {
      _checkPermissionCameraAction(store, action);
    }

    next(action);
  }

  final _log = Logger('AppMiddleware');

  Future<void> _checkPermissionCameraAction(
    Store<GlobalState> store,
    CheckPermissionCameraAction action,
  ) async {
    try {
      final status = await Permission.camera.status;

      if (status.isGranted) {
        // Camera permission already granted
        return;
      }

      // if (status.isPermanentlyDenied) {
      //   // User has permanently denied the permission.
      //   // Open app settings if needed.
      //   await openAppSettings();
      //   return;
      // }

      // Request permission
      final response = await Permission.camera.request();

      if (response.isGranted) {
        // Permission granted
        return;
      }

      // if (response.isPermanentlyDenied) {
      //   // User selected "Don't allow" / permanently denied
      //   await openAppSettings();
      //   return;
      // }

      // Permission denied
      _log.warning('Camera permission denied');
    } catch (ex) {
      _log.severe('_checkPermissionCameraAction', ex);
    }
  }
}
