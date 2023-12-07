import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/config/app_router.dart';
import 'package:new_app/core/constants/app_strings.dart';
import 'package:new_app/core/localization/generated/l10n.dart';
import 'package:new_app/core/localization/localzation_helper.dart';
//  import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return ScreenUtilInit(
      child: MaterialApp.router(
        // locale: const Locale('ar'),

        locale: LocalizationHelper.defaultLocale,
        localizationsDelegates: const [
          AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: LocalizationHelper.supportedLocales,
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        title: AppName.appName,
      ),
    );
  }
}
