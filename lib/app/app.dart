import 'package:bcc_rscm/core/injector/injector.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/states/global_state.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_redux/flutter_redux.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<GlobalState>(store: getIt.get(), child: _AppWrapper());
  }
}

class _AppWrapper extends StatelessGlobalActionMapper {
  const _AppWrapper();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: ColorPalette.bluePrimary),
        appBarTheme: AppBarThemeData(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: TextStyle(
            fontWeight: .w600,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontWeight: .w600,
            fontSize: 24,
            color: Colors.black,
          ),
          displaySmall: TextStyle(
            fontWeight: .w600,
            fontSize: 16,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: .w400,
            color: Color(0xFF898989),
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            fontWeight: .w400,
            color: Color(0xFFC6CEDD),
          ),
        ),
        dividerTheme: DividerThemeData(color: Color(0xFFC6CEDD), thickness: 1),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorPalette.bluePrimary),
            borderRadius: BorderRadius.circular(16),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: ColorPalette.greyScaleBlack10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: ColorPalette.greyScaleBlack10),
          ),
          hintStyle: TextStyle(
            color: ColorPalette.greyScaleBlack30,
            fontSize: 14,
            fontWeight: .w500,
          ),
          labelStyle: TextStyle(
            color: ColorPalette.greyScaleBlack30,
            fontSize: 14,
            fontWeight: .w500,
          ),
          floatingLabelStyle: TextStyle(
            color: ColorPalette.bluePrimary,
            fontSize: 14,
            fontWeight: .w500,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF1F4391),
            foregroundColor: Colors.white,
            minimumSize: Size(0, 55),
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: .w700,
              fontFamily: 'Poppins',
            ),
            shape: StadiumBorder(),
          ),
        ),
        fontFamily: 'Poppins',
      ),
      routerConfig: getIt.get<GoRouter>(),
    );
  }
}
