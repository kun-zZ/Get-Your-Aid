import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcomeText => 'Hello, Welcome!';

  @override
  String get choose => 'Choose your Language';

  @override
  String get signin => 'Sign In';

  @override
  String get enteremail => 'Please enter the Email';
}
