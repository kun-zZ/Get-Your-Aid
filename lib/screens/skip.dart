import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../change_Language_Page.dart';
import 'firebase_auth.dart';

class Skip extends StatefulWidget {
  const Skip({Key? key}) : super(key: key);

  @override
  State<Skip> createState() => _SkipState();
}

class _SkipState extends State<Skip> {
  List<PageViewModel> getpages() {
    return [
      PageViewModel(
        title: '',
        image: Image.asset(
          'assets/doc.png',
          //fit: BoxFit.cover,
        ),
        //body: "Search Doctors",
        bodyWidget: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Get Your Aid', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.lightBlue[100],
        pages: getpages(),
        showNextButton: false,
        showSkipButton: false,
        done: SizedBox(
          height: 48,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.blue[300],
            shadowColor: Colors.blueGrey[200],
            elevation: 5,
            child: Center(
              child: Text(
                'Continue',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
        onDone: () => _pushPage(context, const changeLanguage()),
      ),
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
