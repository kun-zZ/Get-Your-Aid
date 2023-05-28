import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_as.dart';
import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('as'),
    Locale('en')
  ];

  /// No description provided for @welcomeText.
  ///
  /// In en, this message translates to:
  /// **'Hello, Welcome!'**
  String get welcomeText;

  /// No description provided for @choose.
  ///
  /// In en, this message translates to:
  /// **'Choose your Language'**
  String get choose;

  /// No description provided for @signin.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signin;

  /// No description provided for @enteremail.
  ///
  /// In en, this message translates to:
  /// **'Please enter the Email'**
  String get enteremail;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'HELLO'**
  String get hello;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create an Account'**
  String get create;

  /// No description provided for @chats.
  ///
  /// In en, this message translates to:
  /// **'Chats'**
  String get chats;

  /// No description provided for @appointments.
  ///
  /// In en, this message translates to:
  /// **'All Appointments'**
  String get appointments;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @myappo.
  ///
  /// In en, this message translates to:
  /// **'My Appointments'**
  String get myappo;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done!'**
  String get done;

  /// No description provided for @k.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get k;

  /// No description provided for @registered.
  ///
  /// In en, this message translates to:
  /// **'Appointment is registered.'**
  String get registered;

  /// No description provided for @booking.
  ///
  /// In en, this message translates to:
  /// **'Appointment booking'**
  String get booking;

  /// No description provided for @pdetails.
  ///
  /// In en, this message translates to:
  /// **'Enter Patient Details'**
  String get pdetails;

  /// No description provided for @fdoctor.
  ///
  /// In en, this message translates to:
  /// **'Find Doctors'**
  String get fdoctor;

  /// No description provided for @sdoctor.
  ///
  /// In en, this message translates to:
  /// **'Search Doctor'**
  String get sdoctor;

  /// No description provided for @showall.
  ///
  /// In en, this message translates to:
  /// **'Show All'**
  String get showall;

  /// No description provided for @whours.
  ///
  /// In en, this message translates to:
  /// **'Working Hours'**
  String get whours;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today:'**
  String get today;

  /// No description provided for @bookingappointment.
  ///
  /// In en, this message translates to:
  /// **'Book an Appointment'**
  String get bookingappointment;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @finddoctor.
  ///
  /// In en, this message translates to:
  /// **'Let\'s Find Your Doctor'**
  String get finddoctor;

  /// No description provided for @searchdoctor.
  ///
  /// In en, this message translates to:
  /// **'Search doctor'**
  String get searchdoctor;

  /// No description provided for @wecare.
  ///
  /// In en, this message translates to:
  /// **'We care for you'**
  String get wecare;

  /// No description provided for @specialist.
  ///
  /// In en, this message translates to:
  /// **'Specialists'**
  String get specialist;

  /// No description provided for @toprated.
  ///
  /// In en, this message translates to:
  /// **'Top Rated'**
  String get toprated;

  /// No description provided for @disease.
  ///
  /// In en, this message translates to:
  /// **'Disease'**
  String get disease;

  /// No description provided for @spread.
  ///
  /// In en, this message translates to:
  /// **'How does it spread?'**
  String get spread;

  /// No description provided for @symtomps.
  ///
  /// In en, this message translates to:
  /// **'Symptoms'**
  String get symtomps;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning Signs - Seek medical attention'**
  String get warning;

  /// No description provided for @emailnotadded.
  ///
  /// In en, this message translates to:
  /// **'Email Not Added'**
  String get emailnotadded;

  /// No description provided for @usersetting.
  ///
  /// In en, this message translates to:
  /// **'User Settings'**
  String get usersetting;

  /// No description provided for @signout.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signout;

  /// No description provided for @cont.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get cont;

  /// No description provided for @notadded.
  ///
  /// In en, this message translates to:
  /// **'Not Added'**
  String get notadded;

  /// No description provided for @bio.
  ///
  /// In en, this message translates to:
  /// **'Bio'**
  String get bio;

  /// No description provided for @ahistory.
  ///
  /// In en, this message translates to:
  /// **'Appointment History'**
  String get ahistory;

  /// No description provided for @viewall.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get viewall;

  /// No description provided for @selectpic.
  ///
  /// In en, this message translates to:
  /// **'Select photo'**
  String get selectpic;

  /// No description provided for @fromgallery.
  ///
  /// In en, this message translates to:
  /// **'From gallery'**
  String get fromgallery;

  /// No description provided for @takepic.
  ///
  /// In en, this message translates to:
  /// **'Take a photo'**
  String get takepic;

  /// No description provided for @typemessage.
  ///
  /// In en, this message translates to:
  /// **'Type a message'**
  String get typemessage;

  /// No description provided for @enterpatientname.
  ///
  /// In en, this message translates to:
  /// **'Please Enter Patient Name'**
  String get enterpatientname;

  /// No description provided for @patientname.
  ///
  /// In en, this message translates to:
  /// **'Patient Name*'**
  String get patientname;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile*'**
  String get mobile;

  /// No description provided for @enterphno.
  ///
  /// In en, this message translates to:
  /// **'Please Enter Phone number'**
  String get enterphno;

  /// No description provided for @entercorrectno.
  ///
  /// In en, this message translates to:
  /// **'Please Enter correct Phone number'**
  String get entercorrectno;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @enterdocname.
  ///
  /// In en, this message translates to:
  /// **'Please enter Doctor name'**
  String get enterdocname;

  /// No description provided for @docname.
  ///
  /// In en, this message translates to:
  /// **'Doctor Name*'**
  String get docname;

  /// No description provided for @selectdate.
  ///
  /// In en, this message translates to:
  /// **'Select Date*'**
  String get selectdate;

  /// No description provided for @enterdate.
  ///
  /// In en, this message translates to:
  /// **'Please Enter the Date'**
  String get enterdate;

  /// No description provided for @selecttime.
  ///
  /// In en, this message translates to:
  /// **'Select Time*'**
  String get selecttime;

  /// No description provided for @entertime.
  ///
  /// In en, this message translates to:
  /// **'Please Enter the Time'**
  String get entertime;

  /// No description provided for @lg.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get lg;

  /// No description provided for @em.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get em;

  /// No description provided for @entercem.
  ///
  /// In en, this message translates to:
  /// **'Please enter the correct email'**
  String get entercem;

  /// No description provided for @ps.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get ps;

  /// No description provided for @psc.
  ///
  /// In en, this message translates to:
  /// **'Please enter the correct password'**
  String get psc;

  /// No description provided for @noacc.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get noacc;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Signup here'**
  String get signup;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @prob.
  ///
  /// In en, this message translates to:
  /// **'There was a problem signing you in'**
  String get prob;

  /// No description provided for @chdis.
  ///
  /// In en, this message translates to:
  /// **'Check Disease'**
  String get chdis;

  /// No description provided for @sup.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get sup;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @plname.
  ///
  /// In en, this message translates to:
  /// **'Please Enter the name'**
  String get plname;

  /// No description provided for @ps8.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long'**
  String get ps8;

  /// No description provided for @plps.
  ///
  /// In en, this message translates to:
  /// **'Please enter the password'**
  String get plps;

  /// No description provided for @cnf.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get cnf;

  /// No description provided for @psnm.
  ///
  /// In en, this message translates to:
  /// **'Password not matching'**
  String get psnm;

  /// No description provided for @dr.
  ///
  /// In en, this message translates to:
  /// **'Doctor'**
  String get dr;

  /// No description provided for @pt.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get pt;

  /// No description provided for @already.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get already;

  /// No description provided for @err.
  ///
  /// In en, this message translates to:
  /// **'Error!'**
  String get err;

  /// No description provided for @emal.
  ///
  /// In en, this message translates to:
  /// **'Email already exists'**
  String get emal;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['as', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'as': return AppLocalizationsAs();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
