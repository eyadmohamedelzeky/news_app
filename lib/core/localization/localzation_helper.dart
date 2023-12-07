import 'package:flutter/material.dart';
import 'package:new_app/core/localization/generated/l10n.dart';
class LocalizationHelper {
  static Locale get defaultLocale => AppLocalization.delegate.supportedLocales[1];

  static  List<Locale> supportedLocales  = AppLocalization.delegate.supportedLocales;

  static const LocalizationsDelegate<AppLocalization> delegate = AppLocalization.delegate;
}