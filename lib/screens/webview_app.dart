import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:health_app/change_Language_Page.dart';
import '../webview_model.dart';
import '/screens/global_variables.dart' as globals;
import 'global_variables.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Model extends StatelessWidget {
  const Model({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final currentLocale = _currentLocale(context);
    // String currentLanguageCode = currentLocale?.languageCode ?? ''
    // final LanguageSingleton languageSingleton = LanguageSingleton();
    globals.selectedLanguageCode;
    String? weburl;
    if (selectedLanguageCode=='as')
      weburl= 'http://bbass.pythonanywhere.com/';
    else if (selectedLanguageCode=='en')
      weburl= 'http://kunz.pythonanywhere.com/';

    return MaterialApp(
      title: AppLocalizations.of(context)!.chdis,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.chdis),
        ),
        body:
        WebViewContainer(weburl!),
      ),
    );
  }
}