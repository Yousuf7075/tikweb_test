import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constants/strings.dart';
import 'core/themes/app_theme.dart';
import 'logic/debug/app_bloc_observer.dart';
import 'presentation/router/app_router.dart';

void main() {
  BlocOverrides.runZoned(
        () => runApp(TikwebTestApp()),
    blocObserver: AppBlocObserver(),
  );
}

class TikwebTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TikwebStrings.appTitle,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.splashScreen,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
