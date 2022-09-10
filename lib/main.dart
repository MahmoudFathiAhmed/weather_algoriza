import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_algoriza/core/Theme/dark/dark_theme_data.dart';
import 'package:weather_algoriza/core/Theme/light/light_theme_data.dart';
import 'package:weather_algoriza/core/routes/app_routes.dart';
import 'package:weather_algoriza/core/services/service_locator.dart';
import 'package:weather_algoriza/core/utils/app_strings.dart';
import 'package:weather_algoriza/presentation/controller/Theme/theme_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  ServiceLocator().init();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context)=>ThemeCubit()),
    ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      // darkTheme: getDarkThemeData(),
      theme: theme.isLight? getLightThemeData(): getDarkThemeData(),
      // themeMode: ThemeMode.dark,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

