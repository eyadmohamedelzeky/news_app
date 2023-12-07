import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/app/splash_screen/presentation/cubit/language_cubit/language_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LanguageCubit(),
        ),
      ],
      child: ScreenUtilInit(
        child: BlocBuilder<LanguageCubit, LanguageState>(
          builder: (context, state) {
            final cubitLanguage = BlocProvider.of<LanguageCubit>(context);
            if (state is LanguageScuessEn) {
              return MaterialApp.router(
                // locale: const Locale('ar'),
                locale: cubitLanguage.localelanguage,

                // locale: LocalizationHelper.defaultLocale,
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
              );
            } else {
              return MaterialApp.router(
                //  locale: const Locale('ar'),
                //locale: cubitLanguage.localelanguage,
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
              );
            }
          },
        ),
      ),
    );
  }
}
