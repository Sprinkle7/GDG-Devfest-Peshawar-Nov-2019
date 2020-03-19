import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_devfest/utils/dependency_injection.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/utils/simple_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_splash/animated_splash.dart';
import 'config/config_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  //* Forcing only portrait orientation
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // * Get Shared Preference Instance for whole app
  Devfest.prefs = await SharedPreferences.getInstance();

  //* Time travel debugging to check app states
  BlocSupervisor.delegate = SimpleBlocDelegate();

  // * Set flavor for your app. For eg - MOCK for offline, REST for some random server calls to your backend, FIREBASE for firebase calls
  //* Set DataMode.DART to use Dart hardcoded data and DataMode.JSON to use json file for hardcoded data.
  Injector.configure(Flavor.MOCK, DataMode.JSON);
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedSplash(
      imagePath: 'assets/loading.gif',
      home: ConfigPage(),
      duration: 4000,
      type: AnimatedSplashType.StaticDuration,
    ),
  ));
}


