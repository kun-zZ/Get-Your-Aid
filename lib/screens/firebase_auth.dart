import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../LanguageChangeProvider.dart';
import 'register.dart';
import 'sign_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class FireBaseAuth extends StatefulWidget {
  const FireBaseAuth({Key? key}) : super(key: key);

  @override
  State<FireBaseAuth> createState() => _FireBaseAuthState();

  // void out2(BuildContext context) {
  //   Navigator.pop(context);
  // }
}

class _FireBaseAuthState extends State<FireBaseAuth> {
  // String _selectedLanguage = 'English';
  // final List<String> _languages = ['English', 'Assamese', 'Hindi'];
  //
  // void _onLanguageSelected(String language) {
  //   setState(() {
  //     _selectedLanguage = language;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/image-medical.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 80.0, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.hello,
                      style: GoogleFonts.b612(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      AppLocalizations.of(context)!.welcomeText,
                      style: GoogleFonts.b612(
                          color: Colors.indigo[800],
                          fontSize: 21,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 270,
                    decoration: BoxDecoration(
                      color: Colors.black26.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          padding: const EdgeInsets.all(16),
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: double.infinity,
                            height: 50.0,
                            child: ElevatedButton(
                              onPressed: () =>
                                  _pushPage(context, const SignIn()),
                              style: ElevatedButton.styleFrom(
                                elevation: 2,
                                primary: Colors.indigo[800],
                                onPrimary: Colors.indigo[800],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.signin,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          padding: const EdgeInsets.all(16),
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: double.infinity,
                            height: 50.0,
                            child: ElevatedButton(
                              onPressed: () =>
                                  _pushPage(context, const Register()),
                              style: ElevatedButton.styleFrom(
                                elevation: 2,
                                primary: Colors.white,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.create,
                                style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Container(
                        //   width: MediaQuery.of(context).size.width / 1.1,
                        //   padding: const EdgeInsets.all(16),
                        //   alignment: Alignment.center,
                        //   child: SizedBox(
                        //     width: double.infinity,
                        //     height: 50.0,
                        //       child: Scaffold(
                        //           body: Center(
                        //             child: DropdownButton(
                        //                 value: _selectedLanguage,
                        //                 items: _languages.map((language) {
                        //                   return DropdownMenuItem(
                        //                     value: language,
                        //                     child: Text(language),
                        //                   );
                        //                 }).toList(),
                        //                 onChanged: context.read<LanguageChangeProvider>().changeLocale(_selectedLanguage)
                        //             ),
                        //           ),
                        //         ),
                        //       )
                        //   ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ],
      ), //<--
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
