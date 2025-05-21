import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:project/config/locale/locales.dart';

import 'core/helpers/bloc_observer.dart';
import 'ecommerce_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]
  );

  Bloc.observer = MyBlocObserver();
  await EasyLocalization.ensureInitialized();

  debugRepaintRainbowEnabled = false;

  runApp(
    EasyLocalization(
      ignorePluralRules: false,
      startLocale: AppLocales.supportedLocales.last,
        supportedLocales: AppLocales.supportedLocales,
        fallbackLocale: AppLocales.supportedLocales.last,
        saveLocale: true,
        path: "assets/translation",
        child: const EcommerceApp(),
    )
  );
}