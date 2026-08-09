import 'package:bcc_rscm/core/extensions/store_extensions.dart';
import 'package:bcc_rscm/core/models/utils/environment_config.dart';
import 'package:bcc_rscm/core/redux/states/global_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';

mixin class GlobalActionMapper {
  GetIt get injector => GetIt.instance;

  Store<GlobalState> get store => injector.get<Store<GlobalState>>();

  void dispatch(dynamic action) => store.dispatch(action);

  void dispatches(List<dynamic> actions) => store.dispatches(actions);

  EnvironmentConfig get env => injector.get<EnvironmentConfig>();

  Future<void> copyText(String text, {VoidCallback? onCopied}) async {
    await Clipboard.setData(ClipboardData(text: text));

    onCopied?.call();
  }
}

abstract class StatefulGlobalActionMapper extends StatefulWidget
    with GlobalActionMapper {
  const StatefulGlobalActionMapper({super.key});
}

abstract class StatelessGlobalActionMapper extends StatelessWidget
    with GlobalActionMapper {
  const StatelessGlobalActionMapper({super.key});
}
